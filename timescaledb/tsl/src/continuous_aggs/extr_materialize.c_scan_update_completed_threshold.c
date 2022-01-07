
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_4__ {int scanrel; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {scalar_t__ watermark; } ;
typedef int ScanTupleResult ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_continuous_aggs_completed_threshold ;


 int ERROR ;
 int GETSTRUCT (int ) ;
 int SCAN_DONE ;
 int elog (int ,char*) ;
 int heap_copytuple (int ) ;
 int ts_catalog_update (int ,int ) ;

__attribute__((used)) static ScanTupleResult
scan_update_completed_threshold(TupleInfo *ti, void *data)
{
 int64 new_threshold = *(int64 *) data;
 HeapTuple new_tuple = heap_copytuple(ti->tuple);
 Form_continuous_aggs_completed_threshold form =
  (Form_continuous_aggs_completed_threshold) GETSTRUCT(new_tuple);
 if (form->watermark > new_threshold)
  elog(ERROR, "Internal Error: new completion threshold must not be less than the old one");
 form->watermark = new_threshold;
 ts_catalog_update(ti->scanrel, new_tuple);
 return SCAN_DONE;
}
