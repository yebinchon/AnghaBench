
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bus; int epoll_fd; scalar_t__ fifos; } ;
typedef TYPE_1__ Server ;


 int assert (TYPE_1__*) ;
 int fifo_free (scalar_t__) ;
 int safe_close (int ) ;
 int sd_bus_flush_close_unref (int ) ;

__attribute__((used)) static void server_done(Server *s) {
        assert(s);

        while (s->fifos)
                fifo_free(s->fifos);

        s->epoll_fd = safe_close(s->epoll_fd);
        s->bus = sd_bus_flush_close_unref(s->bus);
}
