
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ n_fds; TYPE_1__* header; scalar_t__ accept_fd; scalar_t__ is_monitor; } ;
typedef TYPE_2__ sd_bus_message ;
typedef TYPE_2__ sd_bus ;
struct TYPE_8__ {scalar_t__ type; } ;


 int SD_BUS_ERROR_INCONSISTENT_MESSAGE ;
 scalar_t__ SD_BUS_MESSAGE_METHOD_CALL ;
 int assert (TYPE_2__*) ;
 int sd_bus_reply_method_errorf (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int process_fd_check(sd_bus *bus, sd_bus_message *m) {
        assert(bus);
        assert(m);
        if (bus->is_monitor)
                return 0;

        if (m->n_fds <= 0)
                return 0;

        if (bus->accept_fd)
                return 0;

        if (m->header->type != SD_BUS_MESSAGE_METHOD_CALL)
                return 1;

        return sd_bus_reply_method_errorf(m, SD_BUS_ERROR_INCONSISTENT_MESSAGE, "Message contains file descriptors, which I cannot accept. Sorry.");
}
