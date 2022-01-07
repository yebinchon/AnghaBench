
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_5__ {scalar_t__ audit_fd; } ;
typedef TYPE_1__ Context ;


 int AUDIT_SYSTEM_BOOT ;
 scalar_t__ EPERM ;
 int assert (TYPE_1__*) ;
 scalar_t__ audit_log_user_comm_message (scalar_t__,int ,char*,char*,int *,int *,int *,int) ;
 scalar_t__ errno ;
 int get_startup_time (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int utmp_put_reboot (int ) ;

__attribute__((used)) static int on_reboot(Context *c) {
        int r = 0, q;
        usec_t t;

        assert(c);
        t = get_startup_time(c);

        q = utmp_put_reboot(t);
        if (q < 0) {
                log_error_errno(q, "Failed to write utmp record: %m");
                r = q;
        }

        return r;
}
