
library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port (a,b,cin : in std_logic;
		  s,cout  : out std_logic);
		  
end fulladder;



architecture rtl of fulladder is
		
		component halfadder is 
			port( a, b : in  std_logic; 
				  s, c : out std_logic );
		end component;  

		signal s0,c0,c1 :std_logic := '0' ;
begin

	hadder1 : halfadder port map (
	a => a , b => b , s => s0 , c => c0);
	
	hadder2 : halfadder port map (
	a => cin , b => s0 , s => s , c => c1);
	
	cout <= c0 or c1 ;

end rtl;