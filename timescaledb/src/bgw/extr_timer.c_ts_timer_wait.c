
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_2__ {int (* wait ) (int ) ;} ;


 int stub1 (int ) ;
 TYPE_1__* timer_get () ;

bool
ts_timer_wait(TimestampTz until)
{
 return timer_get()->wait(until);
}
