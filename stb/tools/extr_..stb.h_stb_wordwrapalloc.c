
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_arr_setlen (int*,int) ;
 int stb_wordwrap (int*,int,int,char*) ;

int *stb_wordwrapalloc(int count, char *str)
{
   int n = stb_wordwrap(((void*)0),0,count,str);
   int *z = ((void*)0);
   stb_arr_setlen(z, n*2);
   stb_wordwrap(z, n, count, str);
   return z;
}
