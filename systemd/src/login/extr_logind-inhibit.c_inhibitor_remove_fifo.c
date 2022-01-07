
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fifo_path; int fifo_fd; int event_source; } ;
typedef TYPE_1__ Inhibitor ;


 int assert (TYPE_1__*) ;
 scalar_t__ mfree (scalar_t__) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void inhibitor_remove_fifo(Inhibitor *i) {
        assert(i);

        i->event_source = sd_event_source_unref(i->event_source);
        i->fifo_fd = safe_close(i->fifo_fd);

        if (i->fifo_path) {
                (void) unlink(i->fifo_path);
                i->fifo_path = mfree(i->fifo_path);
        }
}
