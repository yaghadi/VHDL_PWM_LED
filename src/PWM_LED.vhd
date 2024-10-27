--library declaration
library ieee;
use ieee.std_logic_1164.all;
--entity
entity PWM_LED is
	port(
	clk : in std_logic;
	PWM_OUT :out std_logic);
end PWM_LED;
--arcchhitecture 
architecture rtl of pwm_led is
signal counter :integer range 0 to 27000000;

begin
	PWM_proc:process(clk)
		begin
		if(rising_edge(clk)) then 
			if counter>26999999 then 
				counter<=0;
			else counter<=counter+1;
			end if;
			if counter>13500000 then 
				pwm_out <='0';
			else
				pwm_out <='1';
			end if;
		end if;
		end process pwm_proc;
end rtl;