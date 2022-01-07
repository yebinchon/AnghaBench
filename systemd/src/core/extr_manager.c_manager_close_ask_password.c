
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int have_ask_password; int ask_password_inotify_fd; int ask_password_event_source; } ;
typedef TYPE_1__ Manager ;


 int EINVAL ;
 int assert (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void manager_close_ask_password(Manager *m) {
        assert(m);

        m->ask_password_event_source = sd_event_source_unref(m->ask_password_event_source);
        m->ask_password_inotify_fd = safe_close(m->ask_password_inotify_fd);
        m->have_ask_password = -EINVAL;
}
