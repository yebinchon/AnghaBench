
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_4__ {int capacity; } ;
typedef TYPE_1__ Hypercube ;


 int HYPERCUBE_SIZE (int ) ;
 TYPE_1__* palloc0 (int ) ;

Hypercube *
ts_hypercube_alloc(int16 num_dimensions)
{
 Hypercube *hc = palloc0(HYPERCUBE_SIZE(num_dimensions));

 hc->capacity = num_dimensions;
 return hc;
}
