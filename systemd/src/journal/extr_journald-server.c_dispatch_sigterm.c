
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct signalfd_siginfo {int dummy; } ;
typedef int sd_event_source ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ Server ;


 int LOG_INFO ;
 int assert (TYPE_1__*) ;
 int log_received_signal (int ,struct signalfd_siginfo const*) ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static int dispatch_sigterm(sd_event_source *es, const struct signalfd_siginfo *si, void *userdata) {
        Server *s = userdata;

        assert(s);

        log_received_signal(LOG_INFO, si);

        sd_event_exit(s->event, 0);
        return 0;
}
