
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Count; scalar_t__ Summ; int Shift; } ;
struct TYPE_6__ {unsigned int MaxOrder; unsigned int RestoreMethod; TYPE_1__ DummySee; } ;
typedef TYPE_2__ CPpmd8 ;


 int PPMD_PERIOD_BITS ;
 int RestartModel (TYPE_2__*) ;

void Ppmd8_Init(CPpmd8 *p, unsigned maxOrder, unsigned restoreMethod)
{
  p->MaxOrder = maxOrder;
  p->RestoreMethod = restoreMethod;
  RestartModel(p);
  p->DummySee.Shift = PPMD_PERIOD_BITS;
  p->DummySee.Summ = 0;
  p->DummySee.Count = 64;
}
