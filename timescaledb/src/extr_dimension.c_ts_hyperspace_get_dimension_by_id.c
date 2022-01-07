
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int num_dimensions; int dimensions; } ;
typedef TYPE_2__ Hyperspace ;
typedef TYPE_3__ Dimension ;


 TYPE_3__* bsearch (TYPE_3__*,int ,int ,int,int ) ;
 int cmp_dimension_id ;

Dimension *
ts_hyperspace_get_dimension_by_id(Hyperspace *hs, int32 id)
{
 Dimension dim = {
  .fd.id = id,
 };

 return bsearch(&dim, hs->dimensions, hs->num_dimensions, sizeof(Dimension), cmp_dimension_id);
}
