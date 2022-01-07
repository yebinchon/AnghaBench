
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UInt32 ;
struct TYPE_4__ {size_t lc; size_t lp; } ;
struct TYPE_5__ {int* probs; int* reps; scalar_t__ needInitState; scalar_t__ state; TYPE_1__ prop; } ;
typedef int CLzmaProb ;
typedef TYPE_2__ CLzmaDec ;


 scalar_t__ LZMA_LIT_SIZE ;
 size_t Literal ;
 int kBitModelTotal ;

__attribute__((used)) static void LzmaDec_InitStateReal(CLzmaDec *p)
{
  UInt32 numProbs = Literal + ((UInt32)LZMA_LIT_SIZE << (p->prop.lc + p->prop.lp));
  UInt32 i;
  CLzmaProb *probs = p->probs;
  for (i = 0; i < numProbs; i++)
    probs[i] = kBitModelTotal >> 1;
  p->reps[0] = p->reps[1] = p->reps[2] = p->reps[3] = 1;
  p->state = 0;
  p->needInitState = 0;
}
