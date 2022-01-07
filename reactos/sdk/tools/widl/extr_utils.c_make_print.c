
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (char) ;

__attribute__((used)) static void make_print(char *str)
{
 while(*str)
 {
  if(!isprint(*str))
   *str = ' ';
  str++;
 }
}
