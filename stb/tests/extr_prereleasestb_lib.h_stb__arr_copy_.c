
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void stb__arr ;
struct TYPE_3__ {int limit; int len; } ;


 scalar_t__ malloc (int) ;
 int memcpy (void*,TYPE_1__*,int) ;
 int stb_arr_check2 (void*) ;
 TYPE_1__* stb_arrhead2 (void*) ;

void * stb__arr_copy_(void *p, int elem_size)
{
   stb__arr *q;
   if (p == ((void*)0)) return p;
   q = (stb__arr *) malloc(sizeof(*q) + elem_size * stb_arrhead2(p)->limit);
   stb_arr_check2(p);
   memcpy(q, stb_arrhead2(p), sizeof(*q) + elem_size * stb_arrhead2(p)->len);
   return q+1;
}
