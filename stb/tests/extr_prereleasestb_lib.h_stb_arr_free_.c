
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb__arr ;


 int free (int *) ;
 int stb_arr_check2 (void*) ;
 int * stb_arrhead2 (void*) ;

void stb_arr_free_(void **pp)
{
   void *p = *pp;
   stb_arr_check2(p);
   if (p) {
      stb__arr *q = stb_arrhead2(p);
      free(q);
   }
   *pp = ((void*)0);
}
