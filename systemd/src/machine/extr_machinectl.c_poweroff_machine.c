
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SIGRTMIN ;
 char* arg_kill_who ;
 scalar_t__ arg_signal ;
 int kill_machine (int,char**,void*) ;

__attribute__((used)) static int poweroff_machine(int argc, char *argv[], void *userdata) {
        arg_kill_who = "leader";
        arg_signal = SIGRTMIN+4;

        return kill_machine(argc, argv, userdata);
}
