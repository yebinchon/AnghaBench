
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int sigwinch_event_source; int master_event_source; int stdout_event_source; int stdin_event_source; } ;
typedef TYPE_1__ PTYForward ;


 int assert (TYPE_1__*) ;
 int sd_event_source_set_priority (int ,int ) ;

int pty_forward_set_priority(PTYForward *f, int64_t priority) {
        int r;
        assert(f);

        r = sd_event_source_set_priority(f->stdin_event_source, priority);
        if (r < 0)
                return r;

        r = sd_event_source_set_priority(f->stdout_event_source, priority);
        if (r < 0)
                return r;

        r = sd_event_source_set_priority(f->master_event_source, priority);
        if (r < 0)
                return r;

        r = sd_event_source_set_priority(f->sigwinch_event_source, priority);
        if (r < 0)
                return r;

        return 0;
}
