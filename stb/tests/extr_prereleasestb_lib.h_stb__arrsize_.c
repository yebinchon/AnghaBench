
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int limit; int len; int signature; } ;
typedef TYPE_1__ stb__arr ;


 void* realloc (TYPE_1__*,int) ;
 scalar_t__ stb__arr_malloc (int) ;
 int stb_arr_check2 (void*) ;
 int stb_arr_signature ;
 TYPE_1__* stb_arrhead2 (void*) ;

__attribute__((used)) static void stb__arrsize_(void **pp, int size, int limit, int len)
{
   void *p = *pp;
   stb__arr *a;
   stb_arr_check2(p);
   if (p == ((void*)0)) {
      if (len == 0 && size == 0) return;
      a = (stb__arr *) stb__arr_malloc(sizeof(*a) + size*limit);
      a->limit = limit;
      a->len = len;
      a->signature = stb_arr_signature;
   } else {
      a = stb_arrhead2(p);
      a->len = len;
      if (a->limit < limit) {
         void *p;
         if (a->limit >= 4 && limit < a->limit * 2)
            limit = a->limit * 2;
         p = realloc(a, sizeof(*a) + limit*size);
         if (p) {
            a = (stb__arr *) p;
            a->limit = limit;
         } else {

         }
      }
   }
   a->len = a->len < a->limit ? a->len : a->limit;
   *pp = a+1;
}
