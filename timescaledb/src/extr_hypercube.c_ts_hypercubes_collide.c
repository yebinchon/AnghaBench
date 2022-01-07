
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_slices; int * slices; } ;
typedef TYPE_1__ Hypercube ;


 int Assert (int) ;
 int ts_dimension_slices_collide (int ,int ) ;

bool
ts_hypercubes_collide(Hypercube *cube1, Hypercube *cube2)
{
 int i;

 Assert(cube1->num_slices == cube2->num_slices);

 for (i = 0; i < cube1->num_slices; i++)
  if (!ts_dimension_slices_collide(cube1->slices[i], cube2->slices[i]))
   return 0;

 return 1;
}
