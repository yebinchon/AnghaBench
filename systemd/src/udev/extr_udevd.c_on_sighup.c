
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signalfd_siginfo {int dummy; } ;
typedef int sd_event_source ;
typedef int Manager ;


 int assert (int *) ;
 int manager_reload (int *) ;

__attribute__((used)) static int on_sighup(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        Manager *manager = userdata;

        assert(manager);

        manager_reload(manager);

        return 1;
}
