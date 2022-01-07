
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {int watermark; } ;
typedef int ScanTupleResult ;
typedef TYPE_2__* Form_continuous_aggs_invalidation_threshold ;


 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_CONTINUE ;

__attribute__((used)) static ScanTupleResult
invalidation_threshold_tuple_found(TupleInfo *ti, void *data)
{
 int64 *threshold = data;
 *threshold = ((Form_continuous_aggs_invalidation_threshold) GETSTRUCT(ti->tuple))->watermark;
 return SCAN_CONTINUE;
}
