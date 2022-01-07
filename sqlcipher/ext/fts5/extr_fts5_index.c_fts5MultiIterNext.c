
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_25__ {scalar_t__ rc; } ;
struct TYPE_21__ {scalar_t__ bEof; } ;
struct TYPE_24__ {scalar_t__ bSkipEmpty; int (* xSetOutputs ) (TYPE_4__*,TYPE_3__*) ;TYPE_2__* aFirst; TYPE_3__* aSeg; TYPE_1__ base; } ;
struct TYPE_23__ {scalar_t__ pLeaf; scalar_t__ nPos; int (* xNext ) (TYPE_5__*,TYPE_3__*,int*) ;scalar_t__ pDlidx; } ;
struct TYPE_22__ {int iFirst; } ;
typedef TYPE_3__ Fts5SegIter ;
typedef TYPE_4__ Fts5Iter ;
typedef TYPE_5__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5AssertMultiIterSetup (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ fts5MultiIterAdvanceRowid (TYPE_4__*,int,TYPE_3__**) ;
 int fts5MultiIterAdvanced (TYPE_5__*,TYPE_4__*,int,int) ;
 int fts5MultiIterSetEof (TYPE_4__*) ;
 int fts5SegIterNextFrom (TYPE_5__*,TYPE_3__*,int ) ;
 int stub1 (TYPE_5__*,TYPE_3__*,int*) ;
 int stub2 (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void fts5MultiIterNext(
  Fts5Index *p,
  Fts5Iter *pIter,
  int bFrom,
  i64 iFrom
){
  int bUseFrom = bFrom;
  assert( pIter->base.bEof==0 );
  while( p->rc==SQLITE_OK ){
    int iFirst = pIter->aFirst[1].iFirst;
    int bNewTerm = 0;
    Fts5SegIter *pSeg = &pIter->aSeg[iFirst];
    assert( p->rc==SQLITE_OK );
    if( bUseFrom && pSeg->pDlidx ){
      fts5SegIterNextFrom(p, pSeg, iFrom);
    }else{
      pSeg->xNext(p, pSeg, &bNewTerm);
    }

    if( pSeg->pLeaf==0 || bNewTerm
     || fts5MultiIterAdvanceRowid(pIter, iFirst, &pSeg)
    ){
      fts5MultiIterAdvanced(p, pIter, iFirst, 1);
      fts5MultiIterSetEof(pIter);
      pSeg = &pIter->aSeg[pIter->aFirst[1].iFirst];
      if( pSeg->pLeaf==0 ) return;
    }

    fts5AssertMultiIterSetup(p, pIter);
    assert( pSeg==&pIter->aSeg[pIter->aFirst[1].iFirst] && pSeg->pLeaf );
    if( pIter->bSkipEmpty==0 || pSeg->nPos ){
      pIter->xSetOutputs(pIter, pSeg);
      return;
    }
    bUseFrom = 0;
  }
}
