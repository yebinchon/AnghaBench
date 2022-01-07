
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;


 int Anum_dimension_hypertable_id ;
 int SCAN_DONE ;
 int heap_getattr (int ,int ,int ,int*) ;

__attribute__((used)) static ScanTupleResult
dimension_find_hypertable_id_tuple_found(TupleInfo *ti, void *data)
{
 int32 *hypertable_id = data;
 bool isnull = 0;

 *hypertable_id = heap_getattr(ti->tuple, Anum_dimension_hypertable_id, ti->desc, &isnull);

 return SCAN_DONE;
}
