
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_arr_len (short*) ;

int sum(short *s)
{
   int i,total=0;
   for (i=0; i < stb_arr_len(s); ++i)
      total += s[i];
   return total;
}
