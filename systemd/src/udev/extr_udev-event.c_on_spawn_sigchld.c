
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int si_code; int si_status; } ;
typedef TYPE_1__ siginfo_t ;
typedef int sd_event_source ;
struct TYPE_6__ {int cmd; int device; int accept_failure; } ;
typedef TYPE_2__ Spawn ;





 int EIO ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int assert (TYPE_2__*) ;
 int log_device_debug (int ,char*,int ) ;
 int log_device_error (int ,char*,int ,...) ;
 int log_device_full (int ,int ,int ,char*,int ,int) ;
 int sd_event_exit (int ,int) ;
 int sd_event_source_get_event (int *) ;
 int signal_to_string (int) ;

__attribute__((used)) static int on_spawn_sigchld(sd_event_source *s, const siginfo_t *si, void *userdata) {
        Spawn *spawn = userdata;
        int ret = -EIO;

        assert(spawn);

        switch (si->si_code) {
        case 129:
                if (si->si_status == 0)
                        log_device_debug(spawn->device, "Process '%s' succeeded.", spawn->cmd);
                else
                        log_device_full(spawn->device, spawn->accept_failure ? LOG_DEBUG : LOG_WARNING, 0,
                                        "Process '%s' failed with exit code %i.", spawn->cmd, si->si_status);
                ret = si->si_status;
                break;
        case 128:
        case 130:
                log_device_error(spawn->device, "Process '%s' terminated by signal %s.", spawn->cmd, signal_to_string(si->si_status));
                break;
        default:
                log_device_error(spawn->device, "Process '%s' failed due to unknown reason.", spawn->cmd);
        }

        sd_event_exit(sd_event_source_get_event(s), ret);
        return 1;
}
