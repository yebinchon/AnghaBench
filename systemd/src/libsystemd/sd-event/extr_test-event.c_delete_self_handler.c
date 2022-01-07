
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_event {int mask; } ;
struct inotify_context {int delete_self_handler_called; } ;
typedef int sd_event_source ;


 int IN_DELETE_SELF ;
 int IN_IGNORED ;
 int IN_Q_OVERFLOW ;
 int assert_not_reached (char*) ;
 int log_info (char*) ;
 int maybe_exit (int *,struct inotify_context*) ;

__attribute__((used)) static int delete_self_handler(sd_event_source *s, const struct inotify_event *ev, void *userdata) {
        struct inotify_context *c = userdata;

        if (ev->mask & IN_Q_OVERFLOW) {
                log_info("delete-self-handler: overflow");
                c->delete_self_handler_called = 1;
        } else if (ev->mask & IN_DELETE_SELF) {
                log_info("delete-self-handler: delete-self");
                c->delete_self_handler_called = 1;
        } else if (ev->mask & IN_IGNORED) {
                log_info("delete-self-handler: ignore");
        } else
                assert_not_reached("unexpected inotify event (delete-self)");

        maybe_exit(s, c);
        return 1;
}
