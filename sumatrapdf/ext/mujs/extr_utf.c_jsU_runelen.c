
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rune ;


 int runetochar (char*,int*) ;

int
runelen(int c)
{
 Rune rune;
 char str[10];

 rune = c;
 return runetochar(str, &rune);
}
