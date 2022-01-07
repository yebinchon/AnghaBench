
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pollfd {int events; int revents; int fd; } ;
typedef int socklen_t ;
struct TYPE_5__ {scalar_t__ state; int last_connect_error; int output_fd; } ;
typedef TYPE_1__ sd_bus ;
typedef int error ;


 scalar_t__ BUS_OPENING ;
 int ECONNREFUSED ;
 int POLLERR ;
 int POLLHUP ;
 int POLLOUT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int assert (int) ;
 int bus_next_address (TYPE_1__*) ;
 int bus_socket_start_auth (TYPE_1__*) ;
 int errno ;
 int getsockopt (int ,int ,int ,int*,int*) ;
 int poll (struct pollfd*,int,int ) ;

int bus_socket_process_opening(sd_bus *b) {
        int error = 0;
        socklen_t slen = sizeof(error);
        struct pollfd p = {
                .fd = b->output_fd,
                .events = POLLOUT,
        };
        int r;

        assert(b->state == BUS_OPENING);

        r = poll(&p, 1, 0);
        if (r < 0)
                return -errno;

        if (!(p.revents & (POLLOUT|POLLERR|POLLHUP)))
                return 0;

        r = getsockopt(b->output_fd, SOL_SOCKET, SO_ERROR, &error, &slen);
        if (r < 0)
                b->last_connect_error = errno;
        else if (error != 0)
                b->last_connect_error = error;
        else if (p.revents & (POLLERR|POLLHUP))
                b->last_connect_error = ECONNREFUSED;
        else
                return bus_socket_start_auth(b);

        return bus_next_address(b);
}
