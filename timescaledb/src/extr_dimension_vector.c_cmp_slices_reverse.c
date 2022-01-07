
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DimensionSlice ;


 int ts_dimension_slice_cmp (int const*,int const*) ;

__attribute__((used)) static int
cmp_slices_reverse(const void *left, const void *right)
{
 const DimensionSlice *left_slice = *((DimensionSlice **) left);
 const DimensionSlice *right_slice = *((DimensionSlice **) right);

 return ts_dimension_slice_cmp(right_slice, left_slice);
}
