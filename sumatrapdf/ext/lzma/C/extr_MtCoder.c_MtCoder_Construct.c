
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cs; } ;
struct TYPE_9__ {TYPE_1__ mtProgress; int cs; TYPE_2__* threads; scalar_t__ alloc; } ;
struct TYPE_8__ {unsigned int index; } ;
typedef TYPE_2__ CMtThread ;
typedef TYPE_3__ CMtCoder ;


 int CMtThread_Construct (TYPE_2__*,TYPE_3__*) ;
 int CriticalSection_Init (int *) ;
 unsigned int NUM_MT_CODER_THREADS_MAX ;

void MtCoder_Construct(CMtCoder* p)
{
  unsigned i;
  p->alloc = 0;
  for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
  {
    CMtThread *t = &p->threads[i];
    t->index = i;
    CMtThread_Construct(t, p);
  }
  CriticalSection_Init(&p->cs);
  CriticalSection_Init(&p->mtProgress.cs);
}
