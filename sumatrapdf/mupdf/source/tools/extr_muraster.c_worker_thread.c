
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ band_start; int stop; int status; int num; int bit; int pix; int cookie; int tbounds; int ctm; int list; int ctx; int start; } ;
typedef TYPE_1__ worker_t ;


 int DEBUG_THREADS (char*) ;
 int RENDER_OK ;
 int drawband (int ,int *,int ,int ,int ,int *,scalar_t__,int ,int *) ;
 int mu_trigger_semaphore (int *) ;
 int mu_wait_semaphore (int *) ;

__attribute__((used)) static void worker_thread(void *arg)
{
 worker_t *me = (worker_t *)arg;

 do
 {
  DEBUG_THREADS(("Worker %d waiting\n", me->num));
  mu_wait_semaphore(&me->start);
  DEBUG_THREADS(("Worker %d woken for band_start %d\n", me->num, me->band_start));
  me->status = RENDER_OK;
  if (me->band_start >= 0)
   me->status = drawband(me->ctx, ((void*)0), me->list, me->ctm, me->tbounds, &me->cookie, me->band_start, me->pix, &me->bit);
  DEBUG_THREADS(("Worker %d completed band_start %d (status=%d)\n", me->num, me->band_start, me->status));
  mu_trigger_semaphore(&me->stop);
 }
 while (me->band_start >= 0);
}
