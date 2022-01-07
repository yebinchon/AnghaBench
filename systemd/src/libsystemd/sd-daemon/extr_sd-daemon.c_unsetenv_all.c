
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unsetenv (char*) ;

__attribute__((used)) static void unsetenv_all(bool unset_environment) {

        if (!unset_environment)
                return;

        unsetenv("LISTEN_PID");
        unsetenv("LISTEN_FDS");
        unsetenv("LISTEN_FDNAMES");
}
