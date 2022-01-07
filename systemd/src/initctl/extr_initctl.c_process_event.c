
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef int Server ;
typedef int Fifo ;


 int EIO ;
 int EPOLLIN ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (int *) ;
 int fifo_free (int *) ;
 int fifo_process (int *) ;
 int log_info_errno (int,char*) ;

__attribute__((used)) static int process_event(Server *s, struct epoll_event *ev) {
        int r;
        Fifo *f;

        assert(s);

        if (!(ev->events & EPOLLIN))
                return log_info_errno(SYNTHETIC_ERRNO(EIO),
                                      "Got invalid event from epoll. (3)");

        f = (Fifo*) ev->data.ptr;
        r = fifo_process(f);
        if (r < 0) {
                log_info_errno(r, "Got error on fifo: %m");
                fifo_free(f);
                return r;
        }

        return 0;
}
