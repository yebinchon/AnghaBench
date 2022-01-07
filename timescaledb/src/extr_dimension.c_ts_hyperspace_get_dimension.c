
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {int num_dimensions; TYPE_2__* dimensions; } ;
typedef scalar_t__ Index ;
typedef TYPE_1__ Hyperspace ;
typedef scalar_t__ DimensionType ;
typedef TYPE_2__ Dimension ;


 scalar_t__ DIMENSION_TYPE_ANY ;

Dimension *
ts_hyperspace_get_dimension(Hyperspace *hs, DimensionType type, Index n)
{
 int i;

 for (i = 0; i < hs->num_dimensions; i++)
 {
  if (type == DIMENSION_TYPE_ANY || hs->dimensions[i].type == type)
  {
   if (n == 0)
    return &hs->dimensions[i];
   n--;
  }
 }

 return ((void*)0);
}
