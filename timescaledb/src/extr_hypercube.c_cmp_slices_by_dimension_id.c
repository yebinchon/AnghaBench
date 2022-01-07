
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dimension_id; } ;
struct TYPE_4__ {TYPE_1__ fd; } ;
typedef TYPE_2__ DimensionSlice ;



__attribute__((used)) static int
cmp_slices_by_dimension_id(const void *left, const void *right)
{
 const DimensionSlice *left_slice = *((DimensionSlice **) left);
 const DimensionSlice *right_slice = *((DimensionSlice **) right);

 if (left_slice->fd.dimension_id == right_slice->fd.dimension_id)
  return 0;
 if (left_slice->fd.dimension_id < right_slice->fd.dimension_id)
  return -1;
 return 1;
}
