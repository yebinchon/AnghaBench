
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int accept_socket; int socket_fd; } ;
typedef TYPE_1__ Service ;


 int SOCKET (int ) ;
 int UNIT_DEREF (int ) ;
 scalar_t__ UNIT_ISSET (int ) ;
 int assert (TYPE_1__*) ;
 int asynchronous_close (int ) ;
 int socket_connection_unref (int ) ;
 int unit_ref_unset (int *) ;

void service_close_socket_fd(Service *s) {
        assert(s);



        s->socket_fd = asynchronous_close(s->socket_fd);

        if (UNIT_ISSET(s->accept_socket)) {
                socket_connection_unref(SOCKET(UNIT_DEREF(s->accept_socket)));
                unit_ref_unset(&s->accept_socket);
        }
}
