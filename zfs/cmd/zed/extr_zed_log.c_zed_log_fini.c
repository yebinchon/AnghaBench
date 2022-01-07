
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zed_log_stderr_close () ;
 int zed_log_syslog_close () ;

void
zed_log_fini(void)
{
 zed_log_stderr_close();
 zed_log_syslog_close();
}
