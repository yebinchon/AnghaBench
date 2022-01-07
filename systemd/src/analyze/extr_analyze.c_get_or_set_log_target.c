
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_log_target (int,char**,void*) ;
 int set_log_target (int,char**,void*) ;

__attribute__((used)) static int get_or_set_log_target(int argc, char *argv[], void *userdata) {
        return (argc == 1) ? get_log_target(argc, argv, userdata) : set_log_target(argc, argv, userdata);
}
