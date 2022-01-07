
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ input_fd; scalar_t__ output_fd; } ;
typedef TYPE_1__ sd_bus ;


 int assert (TYPE_1__*) ;
 int bus_detach_io_events (TYPE_1__*) ;
 scalar_t__ safe_close (scalar_t__) ;

void bus_close_io_fds(sd_bus *b) {
        assert(b);

        bus_detach_io_events(b);

        if (b->input_fd != b->output_fd)
                safe_close(b->output_fd);
        b->output_fd = b->input_fd = safe_close(b->input_fd);
}
