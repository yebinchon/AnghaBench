
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
struct pollfd {unsigned int events; unsigned int revents; int fd; } ;
struct TYPE_6__ {int tv_sec; int tv_nsec; } ;
struct loop_timer {int data; int (* callback ) (int ) ;TYPE_3__ expiry; } ;
struct loop_fd_event {int data; int (* callback ) (int ,unsigned int,int ) ;} ;
struct loop {int fd_length; TYPE_2__* timers; TYPE_1__* fd_events; struct pollfd* fds; } ;
struct TYPE_5__ {int length; struct loop_timer** items; } ;
struct TYPE_4__ {struct loop_fd_event** items; } ;


 int CLOCK_MONOTONIC ;
 int INT_MAX ;
 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 int clock_gettime (int ,struct timespec*) ;
 int loop_remove_timer (struct loop*,struct loop_timer*) ;
 int poll (struct pollfd*,int,int) ;
 int stub1 (int ,unsigned int,int ) ;
 int stub2 (int ) ;

void loop_poll(struct loop *loop) {

 int ms = INT_MAX;
 if (loop->timers->length) {
  struct timespec now;
  clock_gettime(CLOCK_MONOTONIC, &now);
  for (int i = 0; i < loop->timers->length; ++i) {
   struct loop_timer *timer = loop->timers->items[i];
   int timer_ms = (timer->expiry.tv_sec - now.tv_sec) * 1000;
   timer_ms += (timer->expiry.tv_nsec - now.tv_nsec) / 1000000;
   if (timer_ms < ms) {
    ms = timer_ms;
   }
  }
 }
 if (ms < 0) {
  ms = 0;
 }

 poll(loop->fds, loop->fd_length, ms);


 for (int i = 0; i < loop->fd_length; ++i) {
  struct pollfd pfd = loop->fds[i];
  struct loop_fd_event *event = loop->fd_events->items[i];


  unsigned events = pfd.events | POLLHUP | POLLERR;

  if (pfd.revents & events) {
   event->callback(pfd.fd, pfd.revents, event->data);
  }
 }


 if (loop->timers->length) {
  struct timespec now;
  clock_gettime(CLOCK_MONOTONIC, &now);
  for (int i = 0; i < loop->timers->length; ++i) {
   struct loop_timer *timer = loop->timers->items[i];
   bool expired = timer->expiry.tv_sec < now.tv_sec ||
    (timer->expiry.tv_sec == now.tv_sec &&
     timer->expiry.tv_nsec < now.tv_nsec);
   if (expired) {
    timer->callback(timer->data);
    loop_remove_timer(loop, timer);
    --i;
   }
  }
 }
}
