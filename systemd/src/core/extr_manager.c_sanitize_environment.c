
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strv_env_unset_many (char**,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int *) ;
 int strv_sort (char**) ;

__attribute__((used)) static char** sanitize_environment(char **l) {


        strv_env_unset_many(
                        l,
                        "EXIT_CODE",
                        "EXIT_STATUS",
                        "INVOCATION_ID",
                        "JOURNAL_STREAM",
                        "LISTEN_FDNAMES",
                        "LISTEN_FDS",
                        "LISTEN_PID",
                        "MAINPID",
                        "MANAGERPID",
                        "NOTIFY_SOCKET",
                        "PIDFILE",
                        "REMOTE_ADDR",
                        "REMOTE_PORT",
                        "SERVICE_RESULT",
                        "WATCHDOG_PID",
                        "WATCHDOG_USEC",
                        ((void*)0));


        strv_sort(l);

        return l;
}
