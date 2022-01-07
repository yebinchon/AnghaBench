
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int nitems (int ) ;
 int tty_term_codes ;

u_int
tty_term_ncodes(void)
{
 return (nitems(tty_term_codes));
}
