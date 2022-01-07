
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
struct loop {int fd_capacity; void* timers; void* fd_events; int fds; } ;


 int SWAY_ERROR ;
 struct loop* calloc (int,int) ;
 void* create_list () ;
 int malloc (int) ;
 int sway_log (int ,char*) ;

struct loop *loop_create(void) {
 struct loop *loop = calloc(1, sizeof(struct loop));
 if (!loop) {
  sway_log(SWAY_ERROR, "Unable to allocate memory for loop");
  return ((void*)0);
 }
 loop->fd_capacity = 10;
 loop->fds = malloc(sizeof(struct pollfd) * loop->fd_capacity);
 loop->fd_events = create_list();
 loop->timers = create_list();
 return loop;
}
