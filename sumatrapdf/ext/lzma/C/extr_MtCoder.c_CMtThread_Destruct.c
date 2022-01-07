
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int thread; } ;
struct TYPE_8__ {scalar_t__ inBuf; TYPE_1__* mtCoder; scalar_t__ outBuf; TYPE_3__ thread; } ;
struct TYPE_7__ {scalar_t__ alloc; } ;
typedef TYPE_2__ CMtThread ;


 int CMtThread_CloseEvents (TYPE_2__*) ;
 int IAlloc_Free (scalar_t__,scalar_t__) ;
 int LoopThread_Close (TYPE_3__*) ;
 int LoopThread_StopAndWait (TYPE_3__*) ;
 scalar_t__ Thread_WasCreated (int *) ;

__attribute__((used)) static void CMtThread_Destruct(CMtThread *p)
{
  CMtThread_CloseEvents(p);

  if (Thread_WasCreated(&p->thread.thread))
  {
    LoopThread_StopAndWait(&p->thread);
    LoopThread_Close(&p->thread);
  }

  if (p->mtCoder->alloc)
    IAlloc_Free(p->mtCoder->alloc, p->outBuf);
  p->outBuf = 0;

  if (p->mtCoder->alloc)
    IAlloc_Free(p->mtCoder->alloc, p->inBuf);
  p->inBuf = 0;
}
