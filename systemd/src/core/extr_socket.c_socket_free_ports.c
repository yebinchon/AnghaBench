
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* ports; } ;
struct TYPE_9__ {struct TYPE_9__* path; int fd; int event_source; } ;
typedef TYPE_1__ SocketPort ;
typedef TYPE_2__ Socket ;


 int LIST_REMOVE (int ,TYPE_1__*,TYPE_1__*) ;
 int assert (TYPE_2__*) ;
 int free (TYPE_1__*) ;
 int port ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int socket_cleanup_fd_list (TYPE_1__*) ;

void socket_free_ports(Socket *s) {
        SocketPort *p;

        assert(s);

        while ((p = s->ports)) {
                LIST_REMOVE(port, s->ports, p);

                sd_event_source_unref(p->event_source);

                socket_cleanup_fd_list(p);
                safe_close(p->fd);
                free(p->path);
                free(p);
        }
}
