
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ SocketPort ;
typedef int FDSet ;


 int assert (TYPE_1__*) ;
 int fdset_remove (int *,int) ;
 int safe_close (int ) ;

__attribute__((used)) static void socket_port_take_fd(SocketPort *p, FDSet *fds, int fd) {
        assert(p);

        safe_close(p->fd);
        p->fd = fdset_remove(fds, fd);
}
