
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_dimensions; TYPE_1__* dimensions; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_2__ Hyperspace ;
typedef scalar_t__ DimensionType ;


 scalar_t__ DIMENSION_TYPE_ANY ;

__attribute__((used)) static int
hyperspace_get_num_dimensions_by_type(Hyperspace *hs, DimensionType type)
{
 int i;
 int n = 0;

 for (i = 0; i < hs->num_dimensions; i++)
 {
  if (type == DIMENSION_TYPE_ANY || hs->dimensions[i].type == type)
   n++;
 }

 return n;
}
