
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n_inotify_watches; int inotify_watches; int inotify_fd; } ;
typedef TYPE_1__ sd_bus ;


 int assert (TYPE_1__*) ;
 int bus_detach_inotify_event (TYPE_1__*) ;
 int mfree (int ) ;
 int safe_close (int ) ;

void bus_close_inotify_fd(sd_bus *b) {
        assert(b);

        bus_detach_inotify_event(b);

        b->inotify_fd = safe_close(b->inotify_fd);
        b->inotify_watches = mfree(b->inotify_watches);
        b->n_inotify_watches = 0;
}
