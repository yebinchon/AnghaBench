
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long tv_nsec; scalar_t__ tv_sec; } ;
struct loop_timer {void (* callback ) (void*) ;TYPE_1__ expiry; void* data; } ;
struct loop {int timers; } ;


 int CLOCK_MONOTONIC ;
 int SWAY_ERROR ;
 struct loop_timer* calloc (int,int) ;
 int clock_gettime (int ,TYPE_1__*) ;
 int list_add (int ,struct loop_timer*) ;
 int sway_log (int ,char*) ;

struct loop_timer *loop_add_timer(struct loop *loop, int ms,
  void (*callback)(void *data), void *data) {
 struct loop_timer *timer = calloc(1, sizeof(struct loop_timer));
 if (!timer) {
  sway_log(SWAY_ERROR, "Unable to allocate memory for timer");
  return ((void*)0);
 }
 timer->callback = callback;
 timer->data = data;

 clock_gettime(CLOCK_MONOTONIC, &timer->expiry);
 timer->expiry.tv_sec += ms / 1000;

 long int nsec = (ms % 1000) * 1000000;
 if (timer->expiry.tv_nsec + nsec >= 1000000000) {
  timer->expiry.tv_sec++;
  nsec -= 1000000000;
 }
 timer->expiry.tv_nsec += nsec;

 list_add(loop->timers, timer);

 return timer;
}
