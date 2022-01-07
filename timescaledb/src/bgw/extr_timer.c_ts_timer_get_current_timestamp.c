
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_2__ {int (* get_current_timestamp ) () ;} ;


 int stub1 () ;
 TYPE_1__* timer_get () ;

TimestampTz
ts_timer_get_current_timestamp()
{
 return timer_get()->get_current_timestamp();
}
