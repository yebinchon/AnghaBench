
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ITALIC ;
 int NORMAL ;
 int SetCl (int ) ;
 scalar_t__ putchar (char) ;

void th_outp(char *cur_string, char *THtag)
{
    int symbol;
    putchar('\n');
    putchar('\n');
    putchar('\t');
    putchar('\t');
    SetCl(ITALIC);
     for(symbol=3;putchar(THtag[symbol]); symbol++);
    putchar('\n');
    SetCl(NORMAL);
}
