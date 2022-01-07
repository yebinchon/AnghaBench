
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int finishedEvent; int startEvent; int thread; } ;
typedef TYPE_1__ CLoopThread ;


 int Event_Construct (int *) ;
 int Thread_Construct (int *) ;

void LoopThread_Construct(CLoopThread *p)
{
  Thread_Construct(&p->thread);
  Event_Construct(&p->startEvent);
  Event_Construct(&p->finishedEvent);
}
