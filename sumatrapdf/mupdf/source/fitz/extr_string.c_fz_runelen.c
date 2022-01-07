
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_runetochar (char*,int) ;

int
fz_runelen(int c)
{
 char str[10];
 return fz_runetochar(str, c);
}
