
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int band; int stop; int num; int bit; int pix; int cookie; int tbounds; int ctm; int list; int ctx; int start; } ;
typedef TYPE_1__ worker_t ;


 int DEBUG_THREADS (char*) ;
 int band_height ;
 int drawband (int ,int *,int ,int ,int ,int *,int,int ,int *) ;
 int mu_trigger_semaphore (int *) ;
 int mu_wait_semaphore (int *) ;

__attribute__((used)) static void worker_thread(void *arg)
{
 worker_t *me = (worker_t *)arg;

 do
 {
  DEBUG_THREADS(("Worker %d waiting\n", me->num));
  mu_wait_semaphore(&me->start);
  DEBUG_THREADS(("Worker %d woken for band %d\n", me->num, me->band));
  if (me->band >= 0)
   drawband(me->ctx, ((void*)0), me->list, me->ctm, me->tbounds, &me->cookie, me->band * band_height, me->pix, &me->bit);
  DEBUG_THREADS(("Worker %d completed band %d\n", me->num, me->band));
  mu_trigger_semaphore(&me->stop);
 }
 while (me->band >= 0);
}
