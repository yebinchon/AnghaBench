
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_fd ;
 int journal_fd ;
 int kmsg_fd ;
 int syslog_fd ;

void log_forget_fds(void) {


        console_fd = kmsg_fd = syslog_fd = journal_fd = -1;
}
