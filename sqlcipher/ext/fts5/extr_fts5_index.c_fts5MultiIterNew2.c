
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_17__ {scalar_t__ szLeaf; int nn; int p; } ;
struct TYPE_14__ {int bEof; } ;
struct TYPE_16__ {int bRev; TYPE_2__ base; TYPE_1__* aFirst; TYPE_3__* aSeg; } ;
struct TYPE_15__ {int flags; int iEndofDoclist; int iRowid; int iLeafOffset; TYPE_5__* pLeaf; } ;
struct TYPE_13__ {int iFirst; } ;
typedef TYPE_3__ Fts5SegIter ;
typedef TYPE_4__ Fts5Iter ;
typedef int Fts5Index ;
typedef TYPE_5__ Fts5Data ;


 int FTS5_SEGITER_ONETERM ;
 int FTS5_SEGITER_REVERSE ;
 int fts5DataRelease (TYPE_5__*) ;
 int fts5GetVarint (int ,int *) ;
 TYPE_4__* fts5MultiIterAlloc (int *,int) ;
 int fts5SegIterLoadNPos (int *,TYPE_3__*) ;
 int fts5SegIterReverseInitPage (int *,TYPE_3__*) ;
 int fts5SegIterSetNext (int *,TYPE_3__*) ;

__attribute__((used)) static void fts5MultiIterNew2(
  Fts5Index *p,
  Fts5Data *pData,
  int bDesc,
  Fts5Iter **ppOut
){
  Fts5Iter *pNew;
  pNew = fts5MultiIterAlloc(p, 2);
  if( pNew ){
    Fts5SegIter *pIter = &pNew->aSeg[1];

    pIter->flags = FTS5_SEGITER_ONETERM;
    if( pData->szLeaf>0 ){
      pIter->pLeaf = pData;
      pIter->iLeafOffset = fts5GetVarint(pData->p, (u64*)&pIter->iRowid);
      pIter->iEndofDoclist = pData->nn;
      pNew->aFirst[1].iFirst = 1;
      if( bDesc ){
        pNew->bRev = 1;
        pIter->flags |= FTS5_SEGITER_REVERSE;
        fts5SegIterReverseInitPage(p, pIter);
      }else{
        fts5SegIterLoadNPos(p, pIter);
      }
      pData = 0;
    }else{
      pNew->base.bEof = 1;
    }
    fts5SegIterSetNext(p, pIter);

    *ppOut = pNew;
  }

  fts5DataRelease(pData);
}
