
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_stderr; int priority; } ;


 TYPE_1__ _ctx ;

void
zed_log_stderr_open(int priority)
{
 _ctx.do_stderr = 1;
 _ctx.priority = priority;
}
