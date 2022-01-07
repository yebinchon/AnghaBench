
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int PrevSuccess; int RunLength; TYPE_1__* FoundState; } ;
struct TYPE_5__ {int Freq; } ;
typedef TYPE_2__ CPpmd8 ;
typedef int Byte ;


 int NextContext (TYPE_2__*) ;

void Ppmd8_UpdateBin(CPpmd8 *p)
{
  p->FoundState->Freq = (Byte)(p->FoundState->Freq + (p->FoundState->Freq < 196));
  p->PrevSuccess = 1;
  p->RunLength++;
  NextContext(p);
}
