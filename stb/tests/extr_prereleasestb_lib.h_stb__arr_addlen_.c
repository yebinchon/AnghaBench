
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__arr_setlen_ (void**,int,scalar_t__) ;
 scalar_t__ stb_arr_len2 (void*) ;

void stb__arr_addlen_(void **p, int size, int addlen)
{
   stb__arr_setlen_(p, size, stb_arr_len2(*p) + addlen);
}
