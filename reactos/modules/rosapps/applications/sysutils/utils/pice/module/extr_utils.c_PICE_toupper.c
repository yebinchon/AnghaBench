
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char PICE_toupper(char c)
{
 if(c>='a' && c<='z')
  c = (c-'a')+'A';

 return c;
}
