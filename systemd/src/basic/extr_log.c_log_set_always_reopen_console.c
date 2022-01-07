
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int always_reopen_console ;

void log_set_always_reopen_console(bool b) {
        always_reopen_console = b;
}
