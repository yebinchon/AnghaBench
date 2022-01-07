
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_2__ fd; TYPE_1__* cube; } ;
struct TYPE_6__ {int * slices; } ;
typedef TYPE_3__ Chunk ;


 int VALUE_CMP (int ,int ) ;
 int ts_dimension_slice_cmp (int ,int ) ;

__attribute__((used)) static int
chunk_cmp_impl(const Chunk *c1, const Chunk *c2)
{
 int cmp = ts_dimension_slice_cmp(c1->cube->slices[0], c2->cube->slices[0]);

 if (cmp == 0)
  cmp = VALUE_CMP(c1->fd.id, c2->fd.id);

 return cmp;
}
