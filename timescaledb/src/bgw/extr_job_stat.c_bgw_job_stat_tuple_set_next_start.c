
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scanrel; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int TimestampTz ;
struct TYPE_5__ {int next_start; } ;
typedef int ScanTupleResult ;
typedef int HeapTuple ;
typedef TYPE_2__ FormData_bgw_job_stat ;


 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_DONE ;
 int heap_copytuple (int ) ;
 int heap_freetuple (int ) ;
 int ts_catalog_update (int ,int ) ;

__attribute__((used)) static ScanTupleResult
bgw_job_stat_tuple_set_next_start(TupleInfo *ti, void *const data)
{
 TimestampTz *next_start = data;
 HeapTuple tuple = heap_copytuple(ti->tuple);
 FormData_bgw_job_stat *fd = (FormData_bgw_job_stat *) GETSTRUCT(tuple);

 fd->next_start = *next_start;

 ts_catalog_update(ti->scanrel, tuple);
 heap_freetuple(tuple);

 return SCAN_DONE;
}
