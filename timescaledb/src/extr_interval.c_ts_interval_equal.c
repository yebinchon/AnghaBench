
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_time_interval; scalar_t__ integer_interval; int time_interval; } ;
typedef TYPE_1__ FormData_ts_interval ;


 int AssertArg (int ) ;
 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int IntervalPGetDatum (int *) ;
 int interval_eq ;

bool
ts_interval_equal(FormData_ts_interval *invl1, FormData_ts_interval *invl2)
{
 AssertArg(invl1 != ((void*)0));
 AssertArg(invl2 != ((void*)0));

 if (invl1->is_time_interval != invl2->is_time_interval)
  return 0;

 if (invl1->is_time_interval &&
  !DatumGetBool(DirectFunctionCall2(interval_eq,
            IntervalPGetDatum(&invl1->time_interval),
            IntervalPGetDatum(&invl2->time_interval))))
  return 0;

 if (!invl1->is_time_interval && invl1->integer_interval != invl2->integer_interval)
 {
  return 0;
 }

 return 1;
}
