
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DimensionSlice ;


 int DIMENSION_SLICE_RANGE_END_CMP (int const*,int const*) ;
 int DIMENSION_SLICE_RANGE_START_CMP (int const*,int const*) ;

int
ts_dimension_slice_cmp(const DimensionSlice *left, const DimensionSlice *right)
{
 int res = DIMENSION_SLICE_RANGE_START_CMP(left, right);

 if (res == 0)
  res = DIMENSION_SLICE_RANGE_END_CMP(left, right);

 return res;
}
