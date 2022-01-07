
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ audit_fd; } ;
typedef TYPE_1__ Context ;


 int AUDIT_SYSTEM_RUNLEVEL ;
 int ENOENT ;
 int EPERM ;
 int ESRCH ;
 int IN_SET (int,int ,int ) ;
 int STRLEN (char*) ;
 int assert (TYPE_1__*) ;
 scalar_t__ audit_log_user_comm_message (scalar_t__,int ,char*,char*,int *,int *,int *,int) ;
 int errno ;
 int get_current_runlevel (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int log_warning (char*) ;
 int utmp_get_runlevel (int*,int *) ;
 int utmp_put_runlevel (int,int) ;
 int xsprintf (char*,char*,int,int) ;

__attribute__((used)) static int on_runlevel(Context *c) {
        int r = 0, q, previous, runlevel;

        assert(c);





        q = utmp_get_runlevel(&previous, ((void*)0));

        if (q < 0) {
                if (!IN_SET(q, -ESRCH, -ENOENT))
                        return log_error_errno(q, "Failed to get current runlevel: %m");

                previous = 0;
        }


        runlevel = get_current_runlevel(c);
        if (runlevel < 0)
                return runlevel;
        if (runlevel == 0)
                return log_warning("Failed to get new runlevel, utmp update skipped.");

        if (previous == runlevel)
                return 0;
        q = utmp_put_runlevel(runlevel, previous);
        if (q < 0 && !IN_SET(q, -ESRCH, -ENOENT))
                return log_error_errno(q, "Failed to write utmp record: %m");

        return r;
}
