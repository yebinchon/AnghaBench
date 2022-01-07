
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signalfd_siginfo {int dummy; } ;
typedef struct signalfd_siginfo const sd_event_source ;
typedef struct signalfd_siginfo const Manager ;


 int assert (struct signalfd_siginfo const*) ;
 int manager_reset_server_features (struct signalfd_siginfo const*) ;

__attribute__((used)) static int manager_sigrtmin1(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        Manager *m = userdata;

        assert(s);
        assert(si);
        assert(m);

        manager_reset_server_features(m);
        return 0;
}
