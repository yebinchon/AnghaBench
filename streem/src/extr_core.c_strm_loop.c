
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRM_OK ;
 int sched_yield () ;
 scalar_t__ stream_count ;
 int task_init () ;

int
strm_loop()
{
  if (stream_count == 0) return STRM_OK;
  task_init();
  for (;;) {
    sched_yield();
    if (stream_count == 0) {
      break;
    }
  }
  return STRM_OK;
}
