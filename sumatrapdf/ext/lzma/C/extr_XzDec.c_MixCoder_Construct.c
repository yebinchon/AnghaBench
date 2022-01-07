
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* coders; scalar_t__ numCoders; scalar_t__ buf; int * alloc; } ;
struct TYPE_4__ {int * p; } ;
typedef int ISzAlloc ;
typedef TYPE_2__ CMixCoder ;


 int MIXCODER_NUM_FILTERS_MAX ;

void MixCoder_Construct(CMixCoder *p, ISzAlloc *alloc)
{
  int i;
  p->alloc = alloc;
  p->buf = 0;
  p->numCoders = 0;
  for (i = 0; i < MIXCODER_NUM_FILTERS_MAX; i++)
    p->coders[i].p = ((void*)0);
}
