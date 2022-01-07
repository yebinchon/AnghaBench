
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WRes ;
struct TYPE_4__ {int thread; int finishedEvent; int startEvent; scalar_t__ stop; } ;
typedef TYPE_1__ CLoopThread ;


 int AutoResetEvent_CreateNotSignaled (int *) ;
 int LoopThreadFunc ;
 int RINOK (int ) ;
 int Thread_Create (int *,int ,TYPE_1__*) ;

WRes LoopThread_Create(CLoopThread *p)
{
  p->stop = 0;
  RINOK(AutoResetEvent_CreateNotSignaled(&p->startEvent));
  RINOK(AutoResetEvent_CreateNotSignaled(&p->finishedEvent));
  return Thread_Create(&p->thread, LoopThreadFunc, p);
}
