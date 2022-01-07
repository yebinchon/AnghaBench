
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int DimensionType ;


 int Anum_dimension_interval_length ;
 int Anum_dimension_num_slices ;
 int DIMENSION_TYPE_ANY ;
 int DIMENSION_TYPE_CLOSED ;
 int DIMENSION_TYPE_OPEN ;
 int ERROR ;
 int elog (int ,char*) ;
 scalar_t__ heap_attisnull_compat (int ,int ,int ) ;

__attribute__((used)) static inline DimensionType
dimension_type(TupleInfo *ti)
{
 if (heap_attisnull_compat(ti->tuple, Anum_dimension_interval_length, ti->desc) &&
  !heap_attisnull_compat(ti->tuple, Anum_dimension_num_slices, ti->desc))
  return DIMENSION_TYPE_CLOSED;

 if (!heap_attisnull_compat(ti->tuple, Anum_dimension_interval_length, ti->desc) &&
  heap_attisnull_compat(ti->tuple, Anum_dimension_num_slices, ti->desc))
  return DIMENSION_TYPE_OPEN;

 elog(ERROR, "invalid partitioning dimension");

 return DIMENSION_TYPE_ANY;
}
