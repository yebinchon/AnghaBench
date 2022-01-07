
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {struct loop* fds; int timers; int fd_events; } ;


 int free (struct loop*) ;
 int list_free_items_and_destroy (int ) ;

void loop_destroy(struct loop *loop) {
 list_free_items_and_destroy(loop->fd_events);
 list_free_items_and_destroy(loop->timers);
 free(loop->fds);
 free(loop);
}
