
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int btSync; int hashSync; scalar_t__ hashBuf; } ;
typedef TYPE_1__ CMatchFinderMt ;


 int MtSync_Construct (int *) ;

void MatchFinderMt_Construct(CMatchFinderMt *p)
{
  p->hashBuf = 0;
  MtSync_Construct(&p->hashSync);
  MtSync_Construct(&p->btSync);
}
