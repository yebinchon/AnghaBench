
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* MaxContext; TYPE_2__* MinContext; int InitRL; int RunLength; TYPE_1__* FoundState; } ;
struct TYPE_8__ {int SummFreq; } ;
struct TYPE_7__ {int Freq; } ;
typedef TYPE_3__ CPpmd8 ;


 int MAX_FREQ ;
 int Rescale (TYPE_3__*) ;
 int UpdateModel (TYPE_3__*) ;

void Ppmd8_Update2(CPpmd8 *p)
{
  p->MinContext->SummFreq += 4;
  if ((p->FoundState->Freq += 4) > MAX_FREQ)
    Rescale(p);
  p->RunLength = p->InitRL;
  UpdateModel(p);
  p->MinContext = p->MaxContext;
}
