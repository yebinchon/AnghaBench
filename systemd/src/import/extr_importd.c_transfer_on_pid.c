
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ si_code; scalar_t__ si_status; } ;
typedef TYPE_1__ siginfo_t ;
struct TYPE_9__ {scalar_t__ pid; } ;
typedef TYPE_2__ sd_event_source ;
typedef TYPE_2__ Transfer ;


 int CLD_DUMPED ;
 scalar_t__ CLD_EXITED ;
 int CLD_KILLED ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 int assert (TYPE_2__*) ;
 int log_debug (char*) ;
 int log_error (char*,...) ;
 int signal_to_string (scalar_t__) ;
 int transfer_finalize (TYPE_2__*,int) ;

__attribute__((used)) static int transfer_on_pid(sd_event_source *s, const siginfo_t *si, void *userdata) {
        Transfer *t = userdata;
        bool success = 0;

        assert(s);
        assert(t);

        if (si->si_code == CLD_EXITED) {
                if (si->si_status != 0)
                        log_error("Transfer process failed with exit code %i.", si->si_status);
                else {
                        log_debug("Transfer process succeeded.");
                        success = 1;
                }

        } else if (IN_SET(si->si_code, CLD_KILLED, CLD_DUMPED))
                log_error("Transfer process terminated by signal %s.", signal_to_string(si->si_status));
        else
                log_error("Transfer process failed due to unknown reason.");

        t->pid = 0;

        return transfer_finalize(t, success);
}
