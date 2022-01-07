
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WRes ;
struct TYPE_3__ {int stop; int thread; int startEvent; } ;
typedef TYPE_1__ CLoopThread ;


 scalar_t__ Event_Set (int *) ;
 int SZ_ERROR_THREAD ;
 int Thread_Wait (int *) ;

WRes LoopThread_StopAndWait(CLoopThread *p)
{
  p->stop = 1;
  if (Event_Set(&p->startEvent) != 0)
    return SZ_ERROR_THREAD;
  return Thread_Wait(&p->thread);
}
