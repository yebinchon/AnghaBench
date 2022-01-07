
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* param; int func; int thread; } ;
struct TYPE_11__ {unsigned int numThreads; scalar_t__ res; TYPE_1__* threads; int progress; int mtProgress; } ;
struct TYPE_10__ {TYPE_3__ thread; int canRead; int canWrite; int stopReading; } ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ CMtThread ;
typedef TYPE_2__ CMtCoder ;
typedef TYPE_3__ CLoopThread ;


 int CMtThread_CloseEvents (TYPE_1__*) ;
 int CMtThread_Prepare (TYPE_1__*) ;
 int Event_Set (int *) ;
 scalar_t__ LoopThread_Create (TYPE_3__*) ;
 scalar_t__ LoopThread_StartSubThread (TYPE_3__*) ;
 int LoopThread_WaitSubThread (TYPE_3__*) ;
 int MtProgress_Init (int *,int ) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_THREAD ;
 scalar_t__ SZ_OK ;
 int ThreadFunc ;
 int Thread_WasCreated (int *) ;
 int True ;

SRes MtCoder_Code(CMtCoder *p)
{
  unsigned i, numThreads = p->numThreads;
  SRes res = SZ_OK;
  p->res = SZ_OK;

  MtProgress_Init(&p->mtProgress, p->progress);

  for (i = 0; i < numThreads; i++)
  {
    RINOK(CMtThread_Prepare(&p->threads[i]));
  }

  for (i = 0; i < numThreads; i++)
  {
    CMtThread *t = &p->threads[i];
    CLoopThread *lt = &t->thread;

    if (!Thread_WasCreated(&lt->thread))
    {
      lt->func = ThreadFunc;
      lt->param = t;

      if (LoopThread_Create(lt) != SZ_OK)
      {
        res = SZ_ERROR_THREAD;
        break;
      }
    }
  }

  if (res == SZ_OK)
  {
    unsigned j;
    for (i = 0; i < numThreads; i++)
    {
      CMtThread *t = &p->threads[i];
      if (LoopThread_StartSubThread(&t->thread) != SZ_OK)
      {
        res = SZ_ERROR_THREAD;
        p->threads[0].stopReading = True;
        break;
      }
    }

    Event_Set(&p->threads[0].canWrite);
    Event_Set(&p->threads[0].canRead);

    for (j = 0; j < i; j++)
      LoopThread_WaitSubThread(&p->threads[j].thread);
  }

  for (i = 0; i < numThreads; i++)
    CMtThread_CloseEvents(&p->threads[i]);
  return (res == SZ_OK) ? p->res : res;
}
