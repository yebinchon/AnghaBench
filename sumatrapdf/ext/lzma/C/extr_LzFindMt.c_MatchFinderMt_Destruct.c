
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int btSync; int hashSync; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CMatchFinderMt ;


 int MatchFinderMt_FreeMem (TYPE_1__*,int *) ;
 int MtSync_Destruct (int *) ;

void MatchFinderMt_Destruct(CMatchFinderMt *p, ISzAlloc *alloc)
{
  MtSync_Destruct(&p->hashSync);
  MtSync_Destruct(&p->btSync);
  MatchFinderMt_FreeMem(p, alloc);
}
