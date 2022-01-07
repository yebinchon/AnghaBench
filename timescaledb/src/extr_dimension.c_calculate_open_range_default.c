
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int interval_length; int id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int DimensionSlice ;
typedef TYPE_2__ Dimension ;


 int DIMENSION_SLICE_MAXVALUE ;
 int DIMENSION_SLICE_MINVALUE ;
 int * ts_dimension_slice_create (int ,int,int) ;

__attribute__((used)) static DimensionSlice *
calculate_open_range_default(Dimension *dim, int64 value)
{
 int64 range_start, range_end;

 if (value < 0)
 {
  range_end = ((value + 1) / dim->fd.interval_length) * dim->fd.interval_length;


  if (DIMENSION_SLICE_MINVALUE - range_end > -dim->fd.interval_length)
  {
   range_start = DIMENSION_SLICE_MINVALUE;
  }
  else
  {
   range_start = range_end - dim->fd.interval_length;
  }
 }
 else
 {
  range_start = (value / dim->fd.interval_length) * dim->fd.interval_length;


  if (DIMENSION_SLICE_MAXVALUE - range_start < dim->fd.interval_length)
  {
   range_end = DIMENSION_SLICE_MAXVALUE;
  }
  else
  {
   range_end = range_start + dim->fd.interval_length;
  }
 }

 return ts_dimension_slice_create(dim->fd.id, range_start, range_end);
}
