
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int saved_argc ;
 char** saved_argv ;

__attribute__((used)) static inline void save_argc_argv(int argc, char **argv) {
        saved_argc = argc;
        saved_argv = argv;
}
