
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fifo_path; int fifo_fd; int fifo_event_source; } ;
typedef TYPE_1__ Session ;


 int assert (TYPE_1__*) ;
 scalar_t__ mfree (scalar_t__) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void session_remove_fifo(Session *s) {
        assert(s);

        s->fifo_event_source = sd_event_source_unref(s->fifo_event_source);
        s->fifo_fd = safe_close(s->fifo_fd);

        if (s->fifo_path) {
                (void) unlink(s->fifo_path);
                s->fifo_path = mfree(s->fifo_path);
        }
}
