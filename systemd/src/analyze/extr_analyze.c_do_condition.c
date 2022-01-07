
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_scope ;
 int strv_skip (char**,int) ;
 int verify_conditions (int ,int ) ;

__attribute__((used)) static int do_condition(int argc, char *argv[], void *userdata) {
        return verify_conditions(strv_skip(argv, 1), arg_scope);
}
