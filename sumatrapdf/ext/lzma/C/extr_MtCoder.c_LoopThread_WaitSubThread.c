
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WRes ;
struct TYPE_3__ {int finishedEvent; } ;
typedef TYPE_1__ CLoopThread ;


 int Event_Wait (int *) ;

WRes LoopThread_WaitSubThread(CLoopThread *p) { return Event_Wait(&p->finishedEvent); }
