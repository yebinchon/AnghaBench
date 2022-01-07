
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int res; int * progress; scalar_t__ totalOutSize; scalar_t__ totalInSize; scalar_t__* outSizes; scalar_t__* inSizes; } ;
typedef int ICompressProgress ;
typedef TYPE_1__ CMtProgress ;


 unsigned int NUM_MT_CODER_THREADS_MAX ;
 int SZ_OK ;

__attribute__((used)) static void MtProgress_Init(CMtProgress *p, ICompressProgress *progress)
{
  unsigned i;
  for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
    p->inSizes[i] = p->outSizes[i] = 0;
  p->totalInSize = p->totalOutSize = 0;
  p->progress = progress;
  p->res = SZ_OK;
}
