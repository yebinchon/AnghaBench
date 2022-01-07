
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int strm_value ;
struct TYPE_4__ {scalar_t__ mode; int rsize; struct TYPE_4__** rest; struct TYPE_4__* dst; scalar_t__ start_func; } ;
typedef TYPE_1__ strm_stream ;
typedef scalar_t__ strm_callback ;


 int FALSE ;
 int TRUE ;
 int sched_yield () ;
 scalar_t__ strm_dying ;
 scalar_t__ strm_killed ;
 int strm_nil_p (int ) ;
 int strm_nil_value () ;
 int strm_task_push (TYPE_1__*,scalar_t__,int ) ;

void
strm_emit(strm_stream* strm, strm_value data, strm_callback func)
{
  if (strm->mode == strm_dying) return;
  if (!strm_nil_p(data)) {
    if (strm->dst) {
      strm_task_push(strm->dst, strm->dst->start_func, data);
      if (strm->dst->mode == strm_killed) {
        strm->dst = ((void*)0);
      }
    }
    if (strm->rest) {
      int i;

      for (i=0; i<strm->rsize; i++) {
        strm_task_push(strm->rest[i], strm->rest[i]->start_func, data);
      }
    }


    if (strm->dst == ((void*)0)) {
      int closed = TRUE;
      if (strm->rest) {
        int i;

        for (i=0; i<strm->rsize; i++) {
          if (strm->rest[i]->mode != strm_killed) {
            closed = FALSE;
            break;
          }
        }
      }
      if (closed) {
        strm->mode = strm_dying;
        return;
      }
    }
  }
  sched_yield();
  if (func) {
    strm_task_push(strm, func, strm_nil_value());
  }
}
