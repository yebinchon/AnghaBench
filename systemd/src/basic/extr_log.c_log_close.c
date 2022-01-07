
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_close_console () ;
 int log_close_journal () ;
 int log_close_kmsg () ;
 int log_close_syslog () ;

void log_close(void) {


        log_close_journal();
        log_close_syslog();
        log_close_kmsg();
        log_close_console();
}
