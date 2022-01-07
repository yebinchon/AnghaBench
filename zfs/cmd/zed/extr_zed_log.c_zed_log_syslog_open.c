
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_syslog; int identity; } ;


 int LOG_NDELAY ;
 int LOG_PID ;
 TYPE_1__ _ctx ;
 int openlog (int ,int,int) ;

void
zed_log_syslog_open(int facility)
{
 _ctx.do_syslog = 1;
 openlog(_ctx.identity, LOG_NDELAY | LOG_PID, facility);
}
