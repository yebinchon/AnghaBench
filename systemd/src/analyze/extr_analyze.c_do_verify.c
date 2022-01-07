
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_generators ;
 int arg_man ;
 int arg_scope ;
 int strv_skip (char**,int) ;
 int verify_units (int ,int ,int ,int ) ;

__attribute__((used)) static int do_verify(int argc, char *argv[], void *userdata) {
        return verify_units(strv_skip(argv, 1), arg_scope, arg_man, arg_generators);
}
