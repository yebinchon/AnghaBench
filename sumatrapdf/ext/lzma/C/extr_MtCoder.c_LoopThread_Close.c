
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int finishedEvent; int startEvent; int thread; } ;
typedef TYPE_1__ CLoopThread ;


 int Event_Close (int *) ;
 int Thread_Close (int *) ;

void LoopThread_Close(CLoopThread *p)
{
  Thread_Close(&p->thread);
  Event_Close(&p->startEvent);
  Event_Close(&p->finishedEvent);
}
