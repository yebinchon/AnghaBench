
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__arrsize_ (void**,int,int,int ) ;
 int stb_arr_check2 (void*) ;
 int stb_arr_len2 (void*) ;

void stb__arr_setsize_(void **pp, int size, int limit)
{
   void *p = *pp;
   stb_arr_check2(p);
   stb__arrsize_(pp, size, limit, stb_arr_len2(p));
}
