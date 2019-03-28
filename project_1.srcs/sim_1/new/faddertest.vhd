
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity faddertest is

end faddertest;


architecture Behavioral of faddertest is

component fulladder is
            port (a,b,cin : in std_logic;
		          s,cout  : out std_logic);
end component;

signal a,b,cin,s,cout :std_logic := '0';

begin

fadder:fulladder port map ( a=>a , b=>b , cin=>cin,
                            s=>s,cout=>cout);

process
begin

wait for 20 ns;
a <= '0'; b <= '0'; cin <= '0';
wait for 20 ns;
a <= '0'; b <= '0'; cin <= '1';
wait for 20 ns;
a <= '0'; b <= '1'; cin <= '0';
wait for 20 ns;
a <= '0'; b <= '1'; cin <= '1';
wait for 20 ns;
a <= '1'; b <= '0'; cin <= '0';
wait for 20 ns;
a <= '1'; b <= '0'; cin <= '1';
wait for 20 ns;
a <= '1'; b <= '1'; cin <= '0';
wait for 20 ns;
a <= '1'; b <= '1'; cin <= '1';
wait;

end process;


end Behavioral;
