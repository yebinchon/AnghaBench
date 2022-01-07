
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_context {unsigned int create_overflow; unsigned int n_create_events; unsigned int* create_called; int delete_self_handler_called; } ;
typedef struct inotify_context sd_event_source ;


 int assert (struct inotify_context*) ;
 int sd_event_exit (int ,int ) ;
 int sd_event_source_get_event (struct inotify_context*) ;

__attribute__((used)) static void maybe_exit(sd_event_source *s, struct inotify_context *c) {
        unsigned n;

        assert(s);
        assert(c);

        if (!c->delete_self_handler_called)
                return;

        for (n = 0; n < 3; n++) {
                unsigned i;

                if (c->create_overflow & (1U << n))
                        continue;

                for (i = 0; i < c->n_create_events; i++)
                        if (!(c->create_called[i] & (1U << n)))
                                return;
        }

        sd_event_exit(sd_event_source_get_event(s), 0);
}
