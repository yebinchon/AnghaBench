
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strm_task {int dummy; } ;
struct TYPE_3__ {int excl; int queue; } ;
typedef TYPE_1__ strm_stream ;


 int prod_queue ;
 int queue ;
 scalar_t__ stream_count ;
 scalar_t__ strm_atomic_cas (int ,int,int) ;
 void* strm_queue_get (int ) ;
 int task_exec (TYPE_1__*,struct strm_task*) ;

__attribute__((used)) static void*
task_loop(void *data)
{
  strm_stream* strm;

  for (;;) {
    strm = strm_queue_get(queue);
    if (!strm) {
      strm = strm_queue_get(prod_queue);
    }
    if (strm) {
      if (strm_atomic_cas(strm->excl, 0, 1)) {
        struct strm_task* t;

        while ((t = strm_queue_get(strm->queue)) != ((void*)0)) {
          task_exec(strm, t);
        }
        strm_atomic_cas(strm->excl, 1, 0);
      }
    }
    if (stream_count == 0) {
      break;
    }
  }
  return ((void*)0);
}
