
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;

void text_outp(char *cur_string)
{
    int symbol=0;

    if(cur_string[0]=='.')
        while(cur_string[symbol]!=' ')
            symbol++;

    for(;cur_string[symbol]!='\n'; symbol++)
        putchar(cur_string[symbol]);

    putchar(' ');
}
