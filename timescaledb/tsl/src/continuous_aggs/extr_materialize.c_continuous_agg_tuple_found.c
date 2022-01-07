
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef scalar_t__ Form_continuous_agg ;


 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_CONTINUE ;

__attribute__((used)) static ScanTupleResult
continuous_agg_tuple_found(TupleInfo *ti, void *data)
{
 Form_continuous_agg *cagg = data;
 *cagg = (Form_continuous_agg) GETSTRUCT(ti->tuple);
 return SCAN_CONTINUE;
}
