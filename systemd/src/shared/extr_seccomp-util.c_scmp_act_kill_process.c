
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SCMP_ACT_KILL ;
 int SCMP_ACT_KILL_PROCESS ;
 int seccomp_api_get () ;

uint32_t scmp_act_kill_process(void) {
        return SCMP_ACT_KILL;
}
