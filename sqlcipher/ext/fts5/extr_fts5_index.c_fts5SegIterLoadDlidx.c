
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ szLeaf; } ;
struct TYPE_6__ {int flags; scalar_t__ iEndofDoclist; int iTermLeafPgno; int pDlidx; int iLeafPgno; TYPE_3__* pLeaf; TYPE_1__* pSeg; } ;
struct TYPE_5__ {int iSegid; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef int Fts5Index ;
typedef TYPE_3__ Fts5Data ;


 int FTS5_SEGITER_ONETERM ;
 int FTS5_SEGITER_REVERSE ;
 int assert (int) ;
 int fts5DlidxIterInit (int *,int,int,int ) ;

__attribute__((used)) static void fts5SegIterLoadDlidx(Fts5Index *p, Fts5SegIter *pIter){
  int iSeg = pIter->pSeg->iSegid;
  int bRev = (pIter->flags & FTS5_SEGITER_REVERSE);
  Fts5Data *pLeaf = pIter->pLeaf;

  assert( pIter->flags & FTS5_SEGITER_ONETERM );
  assert( pIter->pDlidx==0 );




  if( pIter->iTermLeafPgno==pIter->iLeafPgno
   && pIter->iEndofDoclist<pLeaf->szLeaf
  ){
    return;
  }

  pIter->pDlidx = fts5DlidxIterInit(p, bRev, iSeg, pIter->iTermLeafPgno);
}
