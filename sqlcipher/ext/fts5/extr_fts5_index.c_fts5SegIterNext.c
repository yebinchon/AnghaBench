
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct TYPE_20__ {int szLeaf; int nn; int * p; } ;
struct TYPE_19__ {scalar_t__ rc; int pHash; TYPE_1__* pConfig; } ;
struct TYPE_18__ {int iLeafOffset; int nPos; int iEndofDoclist; scalar_t__ pSeg; int flags; int bDel; TYPE_4__* pLeaf; void* iPgidxOff; int iRowid; int term; } ;
struct TYPE_17__ {scalar_t__ eDetail; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Index ;
typedef TYPE_4__ Fts5Data ;


 int ASSERT_SZLEAF_OK (TYPE_4__*) ;
 scalar_t__ FTS5_CORRUPT ;
 scalar_t__ FTS5_DETAIL_NONE ;
 int FTS5_SEGITER_ONETERM ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int assert_nc (int) ;
 int fts5DataRelease (TYPE_4__*) ;
 int fts5FastGetVarint32 (int *,int,int) ;
 int fts5GetVarint (int const*,scalar_t__*) ;
 void* fts5GetVarint32 (int *,int) ;
 int fts5LeafFirstRowidOff (TYPE_4__*) ;
 int fts5LeafFirstTermOff (TYPE_4__*) ;
 int fts5SegIterLoadNPos (TYPE_3__*,TYPE_2__*) ;
 int fts5SegIterLoadTerm (TYPE_3__*,TYPE_2__*,int) ;
 int fts5SegIterNextPage (TYPE_3__*,TYPE_2__*) ;
 int sqlite3Fts5BufferSet (scalar_t__*,int *,int,int *) ;
 scalar_t__ sqlite3Fts5GetVarint (int *,scalar_t__*) ;
 int sqlite3Fts5HashScanEntry (int ,char const**,int const**,int*) ;
 int sqlite3Fts5HashScanNext (int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void fts5SegIterNext(
  Fts5Index *p,
  Fts5SegIter *pIter,
  int *pbNewTerm
){
  Fts5Data *pLeaf = pIter->pLeaf;
  int iOff;
  int bNewTerm = 0;
  int nKeep = 0;
  u8 *a;
  int n;

  assert( pbNewTerm==0 || *pbNewTerm==0 );
  assert( p->pConfig->eDetail!=FTS5_DETAIL_NONE );


  a = pLeaf->p;
  n = pLeaf->szLeaf;

  ASSERT_SZLEAF_OK(pLeaf);
  iOff = pIter->iLeafOffset + pIter->nPos;

  if( iOff<n ){

    assert_nc( iOff<=pIter->iEndofDoclist );
    if( iOff>=pIter->iEndofDoclist ){
      bNewTerm = 1;
      if( iOff!=fts5LeafFirstTermOff(pLeaf) ){
        iOff += fts5GetVarint32(&a[iOff], nKeep);
      }
    }else{
      u64 iDelta;
      iOff += sqlite3Fts5GetVarint(&a[iOff], &iDelta);
      pIter->iRowid += iDelta;
      assert_nc( iDelta>0 );
    }
    pIter->iLeafOffset = iOff;

  }else if( pIter->pSeg==0 ){
    const u8 *pList = 0;
    const char *zTerm = 0;
    int nList = 0;
    assert( (pIter->flags & FTS5_SEGITER_ONETERM) || pbNewTerm );
    if( 0==(pIter->flags & FTS5_SEGITER_ONETERM) ){
      sqlite3Fts5HashScanNext(p->pHash);
      sqlite3Fts5HashScanEntry(p->pHash, &zTerm, &pList, &nList);
    }
    if( pList==0 ){
      fts5DataRelease(pIter->pLeaf);
      pIter->pLeaf = 0;
    }else{
      pIter->pLeaf->p = (u8*)pList;
      pIter->pLeaf->nn = nList;
      pIter->pLeaf->szLeaf = nList;
      pIter->iEndofDoclist = nList+1;
      sqlite3Fts5BufferSet(&p->rc, &pIter->term, (int)strlen(zTerm),
          (u8*)zTerm);
      pIter->iLeafOffset = fts5GetVarint(pList, (u64*)&pIter->iRowid);
      *pbNewTerm = 1;
    }
  }else{
    iOff = 0;

    while( iOff==0 ){
      fts5SegIterNextPage(p, pIter);
      pLeaf = pIter->pLeaf;
      if( pLeaf==0 ) break;
      ASSERT_SZLEAF_OK(pLeaf);
      if( (iOff = fts5LeafFirstRowidOff(pLeaf)) && iOff<pLeaf->szLeaf ){
        iOff += sqlite3Fts5GetVarint(&pLeaf->p[iOff], (u64*)&pIter->iRowid);
        pIter->iLeafOffset = iOff;

        if( pLeaf->nn>pLeaf->szLeaf ){
          pIter->iPgidxOff = pLeaf->szLeaf + fts5GetVarint32(
              &pLeaf->p[pLeaf->szLeaf], pIter->iEndofDoclist
          );
        }
      }
      else if( pLeaf->nn>pLeaf->szLeaf ){
        pIter->iPgidxOff = pLeaf->szLeaf + fts5GetVarint32(
            &pLeaf->p[pLeaf->szLeaf], iOff
        );
        pIter->iLeafOffset = iOff;
        pIter->iEndofDoclist = iOff;
        bNewTerm = 1;
      }
      assert_nc( iOff<pLeaf->szLeaf );
      if( iOff>pLeaf->szLeaf ){
        p->rc = FTS5_CORRUPT;
        return;
      }
    }
  }


  if( pIter->pLeaf ){
    if( bNewTerm ){
      if( pIter->flags & FTS5_SEGITER_ONETERM ){
        fts5DataRelease(pIter->pLeaf);
        pIter->pLeaf = 0;
      }else{
        fts5SegIterLoadTerm(p, pIter, nKeep);
        fts5SegIterLoadNPos(p, pIter);
        if( pbNewTerm ) *pbNewTerm = 1;
      }
    }else{







      int nSz;
      assert( p->rc==SQLITE_OK );
      assert( pIter->iLeafOffset<=pIter->pLeaf->nn );
      fts5FastGetVarint32(pIter->pLeaf->p, pIter->iLeafOffset, nSz);
      pIter->bDel = (nSz & 0x0001);
      pIter->nPos = nSz>>1;
      assert_nc( pIter->nPos>=0 );
    }
  }
}
