
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int num_slices; int * slices; int capacity; } ;
typedef TYPE_1__ Hypercube ;


 size_t HYPERCUBE_SIZE (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,size_t) ;
 TYPE_1__* palloc (size_t) ;
 int ts_dimension_slice_copy (int ) ;

Hypercube *
ts_hypercube_copy(Hypercube *hc)
{
 Hypercube *copy;
 size_t nbytes = HYPERCUBE_SIZE(hc->capacity);
 int i;

 copy = palloc(nbytes);
 memcpy(copy, hc, nbytes);

 for (i = 0; i < hc->num_slices; i++)
  copy->slices[i] = ts_dimension_slice_copy(hc->slices[i]);

 return copy;
}
