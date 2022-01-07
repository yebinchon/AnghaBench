
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outchar (char const) ;

void outstr(const char *str)
{
    while(*str) outchar(*str);
}
