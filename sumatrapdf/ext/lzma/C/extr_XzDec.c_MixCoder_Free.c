
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* Free ) (TYPE_3__*,scalar_t__) ;} ;
struct TYPE_7__ {int numCoders; scalar_t__ buf; TYPE_3__* alloc; TYPE_1__* coders; } ;
struct TYPE_6__ {scalar_t__ p; int (* Free ) (scalar_t__,TYPE_3__*) ;} ;
typedef TYPE_1__ IStateCoder ;
typedef TYPE_2__ CMixCoder ;


 int stub1 (scalar_t__,TYPE_3__*) ;
 int stub2 (TYPE_3__*,scalar_t__) ;

void MixCoder_Free(CMixCoder *p)
{
  int i;
  for (i = 0; i < p->numCoders; i++)
  {
    IStateCoder *sc = &p->coders[i];
    if (p->alloc && sc->p)
      sc->Free(sc->p, p->alloc);
  }
  p->numCoders = 0;
  if (p->buf)
    p->alloc->Free(p->alloc, p->buf);
}
