
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FiberData {size_t nPrio; size_t nRealPrio; int leQueue; scalar_t__ nBoost; int nQuantumQueued; int pFiber; scalar_t__ bExitPrev; struct FiberData* pfdPrev; } ;


 int DeleteFiber (int ) ;
 int InsertTailList (int *,int *) ;
 int * a_leQueues ;
 int free (struct FiberData*) ;
 int nQuantum ;
 struct FiberData* pfdLastStarveScan ;

void Fbt_AfterSwitch(struct FiberData * pfdCur)
{
 struct FiberData * pfdPrev;

 pfdPrev = pfdCur->pfdPrev;


 if(pfdPrev)
 {

  if(pfdCur->bExitPrev)
  {
   if(pfdLastStarveScan == pfdPrev)
    pfdLastStarveScan = 0;

   DeleteFiber(pfdPrev->pFiber);
   free(pfdPrev);
  }

  else
  {

   pfdPrev->nQuantumQueued = nQuantum;


   if(pfdPrev->nBoost)
   {
    pfdPrev->nBoost = 0;
    pfdPrev->nPrio = pfdPrev->nRealPrio;
   }


   InsertTailList
   (
    &a_leQueues[pfdPrev->nPrio],
    &pfdPrev->leQueue
   );
  }
 }
}
