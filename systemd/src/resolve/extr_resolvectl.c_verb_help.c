
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int native_help () ;

__attribute__((used)) static int verb_help(int argc, char **argv, void *userdata) {
        return native_help();
}
