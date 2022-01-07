
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int DimensionSlice ;


 int ts_dimension_slice_cmp_coordinate (int const*,int ) ;

__attribute__((used)) static int
cmp_coordinate_and_slice(const void *left, const void *right)
{
 int64 coord = *((int64 *) left);
 const DimensionSlice *slice = *((DimensionSlice **) right);

 return ts_dimension_slice_cmp_coordinate(slice, coord);
}
