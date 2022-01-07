
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPECIAL_LOCAL_FS_TARGET ;
 scalar_t__ VOLATILE_STATE ;
 int add_mount (int ,char*,char*,int *,char*,char*,int ,int ,int ,char*) ;
 int arg_dest_late ;
 scalar_t__ arg_volatile_mode ;

__attribute__((used)) static int add_volatile_var(void) {

        if (arg_volatile_mode != VOLATILE_STATE)
                return 0;



        return add_mount(arg_dest_late,
                         "tmpfs",
                         "/var",
                         ((void*)0),
                         "tmpfs",
                         "mode=0755",
                         0,
                         0,
                         SPECIAL_LOCAL_FS_TARGET,
                         "/proc/cmdline");
}
