
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int DimensionVec ;
typedef TYPE_2__ Dimension ;


 int * ts_dimension_slice_scan_by_dimension (int ,int ) ;

DimensionVec *
ts_dimension_get_slices(Dimension *dim)
{
 return ts_dimension_slice_scan_by_dimension(dim->fd.id, 0);
}
