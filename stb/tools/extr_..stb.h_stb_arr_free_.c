
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ stb_malloc; } ;
typedef TYPE_1__ stb__arr ;


 int free (TYPE_1__*) ;
 int stb_arr_check2 (void*) ;
 TYPE_1__* stb_arrhead2 (void*) ;
 int stb_free (TYPE_1__*) ;

void stb_arr_free_(void **pp)
{
   void *p = *pp;
   stb_arr_check2(p);
   if (p) {
      stb__arr *q = stb_arrhead2(p);
      if (q->stb_malloc)
         stb_free(q);
      else
         free(q);
   }
   *pp = ((void*)0);
}
