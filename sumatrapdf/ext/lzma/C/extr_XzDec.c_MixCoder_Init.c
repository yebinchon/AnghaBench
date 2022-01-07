
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numCoders; TYPE_1__* coders; scalar_t__* finished; scalar_t__* pos; scalar_t__* size; } ;
struct TYPE_4__ {int p; int (* Init ) (int ) ;} ;
typedef TYPE_1__ IStateCoder ;
typedef TYPE_2__ CMixCoder ;


 int stub1 (int ) ;

void MixCoder_Init(CMixCoder *p)
{
  int i;
  for (i = 0; i < p->numCoders - 1; i++)
  {
    p->size[i] = 0;
    p->pos[i] = 0;
    p->finished[i] = 0;
  }
  for (i = 0; i < p->numCoders; i++)
  {
    IStateCoder *coder = &p->coders[i];
    coder->Init(coder->p);
  }
}
