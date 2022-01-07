
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ is_server; } ;
typedef TYPE_1__ sd_bus ;


 int assert (TYPE_1__*) ;
 int bus_socket_auth_verify_client (TYPE_1__*) ;
 int bus_socket_auth_verify_server (TYPE_1__*) ;

__attribute__((used)) static int bus_socket_auth_verify(sd_bus *b) {
        assert(b);

        if (b->is_server)
                return bus_socket_auth_verify_server(b);
        else
                return bus_socket_auth_verify_client(b);
}
