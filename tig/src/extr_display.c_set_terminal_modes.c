
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curs_set (int ) ;
 int leaveok (int ,int) ;
 int noecho () ;
 int nonl () ;
 int raw () ;
 int stdscr ;

__attribute__((used)) static void
set_terminal_modes(void)
{
 nonl();
 raw();
 noecho();
 curs_set(0);
 leaveok(stdscr, 0);
}
