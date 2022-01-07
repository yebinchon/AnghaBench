
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_5__ {int jumped; int poll_resync; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_debug (char*) ;
 int manager_clock_watch_setup (TYPE_1__*) ;
 int manager_send_request (TYPE_1__*) ;

__attribute__((used)) static int manager_clock_watch(sd_event_source *source, int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;

        assert(m);


        manager_clock_watch_setup(m);


        if (m->jumped) {
                m->jumped = 0;
                return 0;
        }


        log_debug("System time changed. Resyncing.");
        m->poll_resync = 1;

        return manager_send_request(m);
}
