
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_simple_string (void*,char*,char*) ;

__attribute__((used)) static int set_chassis(int argc, char **argv, void *userdata) {
        return set_simple_string(userdata, "SetChassis", argv[1]);
}
