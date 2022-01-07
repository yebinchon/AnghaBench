
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getchar () ;

int
myfread(char *buf, int elsize , int max, FILE *fp)
{
 int c;
 int n = 0;

 while ((n < max) && ((c = getchar()) != EOF))
 {
  *(buf++) = c;
  n++;
  if (c == '\n' || c == '\r')
   break;
 }
 return n;
}
