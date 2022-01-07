
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 char* arg_kill_who ;
 int arg_signal ;
 int kill_machine (int,char**,void*) ;

__attribute__((used)) static int reboot_machine(int argc, char *argv[], void *userdata) {
        arg_kill_who = "leader";
        arg_signal = SIGINT;

        return kill_machine(argc, argv, userdata);
}
