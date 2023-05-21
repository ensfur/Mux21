----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use UNISIM.VComponents.all;

entity mux2x1 is
port (
	switch0		: in std_logic;
	switch1		: in std_logic;
	switch2		: in std_logic;
	led0			: out std_logic
);
end mux2x1;

architecture Behavioral of mux2x1 is

signal temp1	: std_logic := '0';
signal temp2	: std_logic := '0';

begin

--------------------------------------------
-- GATE LEVEL COMBINATIONAL DESIGN
--------------------------------------------
temp1 	<= not (not switch0 and not switch2);
temp2 	<= not ((switch2) and not switch1);
led0	<= not (temp1 and temp2);
-- q1_o	<= not ((not (a_i and s1_i)) and (not ((not s1_i) and b_i)));

--------------------------------------------
-- CONCURRENT ASSIGNMENT COMBINATIONAL DESIGN
--------------------------------------------
--q2_o	<= 	c_i when s2_i = '1' else
--			d_i;

--------------------------------------------
-- PROCESS COMBINATIONAL DESIGN
--------------------------------------------
--P_LABEL : process (s3_i, e_i, f_i) begin
--
--	if (s3_i = '1') then
--		q3_o	<= e_i;
--	else
--		q3_o	<= f_i;
--	end if;
--
--end process P_LABEL;



end Behavioral;








