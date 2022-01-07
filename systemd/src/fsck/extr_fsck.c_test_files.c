
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char*,int ) ;
 int arg_force ;
 int arg_show_progress ;
 int arg_skip ;
 int log_error (char*) ;

__attribute__((used)) static void test_files(void) {
        arg_show_progress = access("/run/systemd/show-status", F_OK) >= 0;
}
