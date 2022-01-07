
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int safe_close (int ) ;
 int syslog_fd ;

__attribute__((used)) static void log_close_syslog(void) {
        syslog_fd = safe_close(syslog_fd);
}
