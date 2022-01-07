
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n_auxiliary_fds; int auxiliary_fds; } ;
typedef TYPE_1__ SocketPort ;


 int assert (TYPE_1__*) ;
 int close_many (int ,scalar_t__) ;
 int mfree (int ) ;

__attribute__((used)) static void socket_cleanup_fd_list(SocketPort *p) {
        assert(p);

        close_many(p->auxiliary_fds, p->n_auxiliary_fds);
        p->auxiliary_fds = mfree(p->auxiliary_fds);
        p->n_auxiliary_fds = 0;
}
