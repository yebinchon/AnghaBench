
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sockets; } ;
typedef TYPE_1__ VarlinkServer ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int varlink_server_socket_destroy (scalar_t__) ;

int varlink_server_shutdown(VarlinkServer *s) {
        assert_return(s, -EINVAL);

        while (s->sockets)
                varlink_server_socket_destroy(s->sockets);

        return 0;
}
