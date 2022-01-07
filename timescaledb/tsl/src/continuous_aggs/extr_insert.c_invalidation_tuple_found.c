
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_4__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {scalar_t__ watermark; } ;
typedef int ScanTupleResult ;
typedef TYPE_2__* Form_continuous_aggs_invalidation_threshold ;


 int GETSTRUCT (int ) ;
 int SCAN_CONTINUE ;

__attribute__((used)) static ScanTupleResult
invalidation_tuple_found(TupleInfo *ti, void *min)
{
 Form_continuous_aggs_invalidation_threshold invalidation =
  (Form_continuous_aggs_invalidation_threshold) GETSTRUCT(ti->tuple);
 if (invalidation->watermark < *(int64 *) min)
  *(int64 *) min = invalidation->watermark;





 return SCAN_CONTINUE;
}
