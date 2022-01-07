
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_t ;


 int process_check_success (int ,char*) ;

__attribute__((used)) static void
wait_show_touches(process_t process) {

    process_check_success(process, "show_touches");
}
