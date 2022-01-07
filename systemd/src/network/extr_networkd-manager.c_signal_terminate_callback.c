
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct signalfd_siginfo {int dummy; } ;
typedef int sd_event_source ;
struct TYPE_3__ {int restarting; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_debug (char*) ;
 int sd_event_exit (int ,int ) ;
 int sd_event_source_get_event (int *) ;

__attribute__((used)) static int signal_terminate_callback(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        Manager *m = userdata;

        assert(m);
        m->restarting = 0;

        log_debug("Terminate operation initiated.");

        return sd_event_exit(sd_event_source_get_event(s), 0);
}
