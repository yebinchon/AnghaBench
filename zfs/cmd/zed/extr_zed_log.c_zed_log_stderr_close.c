
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ do_stderr; } ;


 TYPE_1__ _ctx ;

void
zed_log_stderr_close(void)
{
 if (_ctx.do_stderr)
  _ctx.do_stderr = 0;
}
