
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;


 int stb__arrsize_ (void**,int,int,int) ;
 int stb_arr_check2 (void*) ;
 int stb_arrcurmax2 (void*) ;
 TYPE_1__* stb_arrhead2 (void*) ;

void stb__arr_setlen_(void **pp, int size, int newlen)
{
   void *p = *pp;
   stb_arr_check2(p);
   if (stb_arrcurmax2(p) < newlen || p == ((void*)0)) {
      stb__arrsize_(pp, size, newlen, newlen);
   } else {
      stb_arrhead2(p)->len = newlen;
   }
}
