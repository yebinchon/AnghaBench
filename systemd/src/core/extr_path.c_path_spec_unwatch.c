
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inotify_fd; int event_source; } ;
typedef TYPE_1__ PathSpec ;


 int assert (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

void path_spec_unwatch(PathSpec *s) {
        assert(s);

        s->event_source = sd_event_source_unref(s->event_source);
        s->inotify_fd = safe_close(s->inotify_fd);
}
