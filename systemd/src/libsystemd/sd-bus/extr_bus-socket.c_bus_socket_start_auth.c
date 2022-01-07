
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ input_fd; int accept_fd; scalar_t__ output_fd; scalar_t__ is_server; scalar_t__ auth_timeout; } ;
typedef TYPE_1__ sd_bus ;


 int AF_UNIX ;
 int BUS_AUTHENTICATING ;
 scalar_t__ BUS_AUTH_TIMEOUT ;
 int CLOCK_MONOTONIC ;
 int assert (TYPE_1__*) ;
 int bus_get_peercred (TYPE_1__*) ;
 int bus_set_state (TYPE_1__*,int ) ;
 int bus_socket_read_auth (TYPE_1__*) ;
 int bus_socket_start_auth_client (TYPE_1__*) ;
 scalar_t__ now (int ) ;
 scalar_t__ sd_is_socket (scalar_t__,int ,int ,int ) ;

int bus_socket_start_auth(sd_bus *b) {
        assert(b);

        bus_get_peercred(b);

        bus_set_state(b, BUS_AUTHENTICATING);
        b->auth_timeout = now(CLOCK_MONOTONIC) + BUS_AUTH_TIMEOUT;

        if (sd_is_socket(b->input_fd, AF_UNIX, 0, 0) <= 0)
                b->accept_fd = 0;

        if (b->output_fd != b->input_fd)
                if (sd_is_socket(b->output_fd, AF_UNIX, 0, 0) <= 0)
                        b->accept_fd = 0;

        if (b->is_server)
                return bus_socket_read_auth(b);
        else
                return bus_socket_start_auth_client(b);
}
