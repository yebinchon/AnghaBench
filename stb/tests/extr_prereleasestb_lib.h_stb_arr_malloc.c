
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signature; scalar_t__ limit; scalar_t__ len; } ;
typedef TYPE_1__ stb__arr ;


 scalar_t__ malloc (int) ;
 int stb_arr_signature ;

void stb_arr_malloc(void **target, void *context)
{
   stb__arr *q = (stb__arr *) malloc(sizeof(*q));
   q->len = q->limit = 0;
   q->signature = stb_arr_signature;
   *target = (void *) (q+1);
}
