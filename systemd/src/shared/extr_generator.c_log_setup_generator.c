
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_set_prohibit_ipc (int) ;
 int log_setup_service () ;

void log_setup_generator(void) {
        log_set_prohibit_ipc(1);
        log_setup_service();
}
