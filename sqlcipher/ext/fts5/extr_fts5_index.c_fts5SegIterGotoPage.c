
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_14__ {scalar_t__ rc; } ;
struct TYPE_13__ {int iLeafPgno; int iLeafOffset; int iRowid; TYPE_10__* pLeaf; scalar_t__ pNextLeaf; TYPE_1__* pSeg; } ;
struct TYPE_12__ {int pgnoLast; } ;
struct TYPE_11__ {int szLeaf; int * p; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Index ;


 void* FTS5_CORRUPT ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5DataRelease (scalar_t__) ;
 scalar_t__ fts5GetVarint (int *,int *) ;
 int fts5LeafFirstRowidOff (TYPE_10__*) ;
 int fts5SegIterLoadNPos (TYPE_3__*,TYPE_2__*) ;
 int fts5SegIterNextPage (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void fts5SegIterGotoPage(
  Fts5Index *p,
  Fts5SegIter *pIter,
  int iLeafPgno
){
  assert( iLeafPgno>pIter->iLeafPgno );

  if( iLeafPgno>pIter->pSeg->pgnoLast ){
    p->rc = FTS5_CORRUPT;
  }else{
    fts5DataRelease(pIter->pNextLeaf);
    pIter->pNextLeaf = 0;
    pIter->iLeafPgno = iLeafPgno-1;
    fts5SegIterNextPage(p, pIter);
    assert( p->rc!=SQLITE_OK || pIter->iLeafPgno==iLeafPgno );

    if( p->rc==SQLITE_OK ){
      int iOff;
      u8 *a = pIter->pLeaf->p;
      int n = pIter->pLeaf->szLeaf;

      iOff = fts5LeafFirstRowidOff(pIter->pLeaf);
      if( iOff<4 || iOff>=n ){
        p->rc = FTS5_CORRUPT;
      }else{
        iOff += fts5GetVarint(&a[iOff], (u64*)&pIter->iRowid);
        pIter->iLeafOffset = iOff;
        fts5SegIterLoadNPos(p, pIter);
      }
    }
  }
}
