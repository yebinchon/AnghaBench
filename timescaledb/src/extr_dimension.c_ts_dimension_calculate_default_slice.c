
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int DimensionSlice ;
typedef int Dimension ;


 scalar_t__ IS_OPEN_DIMENSION (int *) ;
 int * calculate_closed_range_default (int *,int ) ;
 int * calculate_open_range_default (int *,int ) ;

DimensionSlice *
ts_dimension_calculate_default_slice(Dimension *dim, int64 value)
{
 if (IS_OPEN_DIMENSION(dim))
  return calculate_open_range_default(dim, value);

 return calculate_closed_range_default(dim, value);
}
