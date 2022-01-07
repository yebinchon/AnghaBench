
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ methodId; int deltaState; int x86State; scalar_t__ bufTotal; scalar_t__ bufConv; scalar_t__ bufPos; } ;
typedef TYPE_1__ CBraState ;


 int Delta_Init (int ) ;
 scalar_t__ XZ_ID_Delta ;
 int x86_Convert_Init (int ) ;

void BraState_Init(void *pp)
{
  CBraState *p = ((CBraState *)pp);
  p->bufPos = p->bufConv = p->bufTotal = 0;
  x86_Convert_Init(p->x86State);
  if (p->methodId == XZ_ID_Delta)
    Delta_Init(p->deltaState);
}
