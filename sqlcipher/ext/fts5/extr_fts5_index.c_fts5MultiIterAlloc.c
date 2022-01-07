
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nSeg; int xSetOutputs; int * pIndex; int * aSeg; int * aFirst; } ;
typedef int Fts5SegIter ;
typedef TYPE_1__ Fts5Iter ;
typedef int Fts5Index ;
typedef int Fts5CResult ;


 TYPE_1__* fts5IdxMalloc (int *,int) ;
 int fts5IterSetOutputs_Noop ;

__attribute__((used)) static Fts5Iter *fts5MultiIterAlloc(
  Fts5Index *p,
  int nSeg
){
  Fts5Iter *pNew;
  int nSlot;

  for(nSlot=2; nSlot<nSeg; nSlot=nSlot*2);
  pNew = fts5IdxMalloc(p,
      sizeof(Fts5Iter) +
      sizeof(Fts5SegIter) * (nSlot-1) +
      sizeof(Fts5CResult) * nSlot
  );
  if( pNew ){
    pNew->nSeg = nSlot;
    pNew->aFirst = (Fts5CResult*)&pNew->aSeg[nSlot];
    pNew->pIndex = p;
    pNew->xSetOutputs = fts5IterSetOutputs_Noop;
  }
  return pNew;
}
