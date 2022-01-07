
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_REEXEC ;
 scalar_t__ ACTION_RELOAD ;
 int IN_SET (scalar_t__,scalar_t__,int ) ;
 int SIGHUP ;
 int SIGTERM ;
 scalar_t__ arg_action ;
 int assert (int ) ;
 scalar_t__ daemon_reload (int ,int *,int *) ;
 int errno ;
 scalar_t__ kill (int,int ) ;
 int log_error_errno (int ,char*) ;

__attribute__((used)) static int reload_with_fallback(void) {

        if (daemon_reload(0, ((void*)0), ((void*)0)) >= 0)
                return 0;


        assert(IN_SET(arg_action, ACTION_RELOAD, ACTION_REEXEC));

        if (kill(1, arg_action == ACTION_RELOAD ? SIGHUP : SIGTERM) < 0)
                return log_error_errno(errno, "kill() failed: %m");

        return 0;
}
