
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_EMERG ;
 int LOG_ERR ;
 int getpid_cached () ;

int log_emergency_level(void) {



        return getpid_cached() == 1 ? LOG_EMERG : LOG_ERR;
}
