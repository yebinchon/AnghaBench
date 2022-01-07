
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idle_pipe; int idle_pipe_event_source; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int safe_close_pair (scalar_t__) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void manager_close_idle_pipe(Manager *m) {
        assert(m);

        m->idle_pipe_event_source = sd_event_source_unref(m->idle_pipe_event_source);

        safe_close_pair(m->idle_pipe);
        safe_close_pair(m->idle_pipe + 2);
}
