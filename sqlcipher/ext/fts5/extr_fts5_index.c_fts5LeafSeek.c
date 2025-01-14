
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_14__ {int iLeafOffset; int iTermLeafOffset; int iEndofDoclist; int iPgidxOff; TYPE_11__* pLeaf; int term; int iLeafPgno; int iTermLeafPgno; } ;
struct TYPE_13__ {scalar_t__* p; int szLeaf; int nn; } ;
typedef TYPE_1__ Fts5SegIter ;
typedef TYPE_2__ Fts5Index ;


 void* FTS5_CORRUPT ;
 scalar_t__ MIN (int,int) ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5BufferAppendBlob (scalar_t__*,int *,int,scalar_t__ const*) ;
 int fts5BufferSet (scalar_t__*,int *,int,scalar_t__ const*) ;
 int fts5DataRelease (TYPE_11__*) ;
 int fts5FastGetVarint32 (scalar_t__ const*,int,int) ;
 scalar_t__ fts5GetVarint32 (scalar_t__ const*,int) ;
 scalar_t__ fts5LeafIsTermless (TYPE_11__*) ;
 int fts5SegIterLoadNPos (TYPE_2__*,TYPE_1__*) ;
 int fts5SegIterLoadRowid (TYPE_2__*,TYPE_1__*) ;
 int fts5SegIterNextPage (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void fts5LeafSeek(
  Fts5Index *p,
  int bGe,
  Fts5SegIter *pIter,
  const u8 *pTerm, int nTerm
){
  int iOff;
  const u8 *a = pIter->pLeaf->p;
  int szLeaf = pIter->pLeaf->szLeaf;
  int n = pIter->pLeaf->nn;

  u32 nMatch = 0;
  u32 nKeep = 0;
  u32 nNew = 0;
  u32 iTermOff;
  int iPgidx;
  int bEndOfPage = 0;

  assert( p->rc==SQLITE_OK );

  iPgidx = szLeaf;
  iPgidx += fts5GetVarint32(&a[iPgidx], iTermOff);
  iOff = iTermOff;
  if( iOff>n ){
    p->rc = FTS5_CORRUPT;
    return;
  }

  while( 1 ){


    fts5FastGetVarint32(a, iOff, nNew);
    if( nKeep<nMatch ){
      goto search_failed;
    }

    assert( nKeep>=nMatch );
    if( nKeep==nMatch ){
      u32 nCmp;
      u32 i;
      nCmp = (u32)MIN(nNew, nTerm-nMatch);
      for(i=0; i<nCmp; i++){
        if( a[iOff+i]!=pTerm[nMatch+i] ) break;
      }
      nMatch += i;

      if( (u32)nTerm==nMatch ){
        if( i==nNew ){
          goto search_success;
        }else{
          goto search_failed;
        }
      }else if( i<nNew && a[iOff+i]>pTerm[nMatch] ){
        goto search_failed;
      }
    }

    if( iPgidx>=n ){
      bEndOfPage = 1;
      break;
    }

    iPgidx += fts5GetVarint32(&a[iPgidx], nKeep);
    iTermOff += nKeep;
    iOff = iTermOff;

    if( iOff>=n ){
      p->rc = FTS5_CORRUPT;
      return;
    }


    fts5FastGetVarint32(a, iOff, nKeep);
  }

 search_failed:
  if( bGe==0 ){
    fts5DataRelease(pIter->pLeaf);
    pIter->pLeaf = 0;
    return;
  }else if( bEndOfPage ){
    do {
      fts5SegIterNextPage(p, pIter);
      if( pIter->pLeaf==0 ) return;
      a = pIter->pLeaf->p;
      if( fts5LeafIsTermless(pIter->pLeaf)==0 ){
        iPgidx = pIter->pLeaf->szLeaf;
        iPgidx += fts5GetVarint32(&pIter->pLeaf->p[iPgidx], iOff);
        if( iOff<4 || iOff>=pIter->pLeaf->szLeaf ){
          p->rc = FTS5_CORRUPT;
          return;
        }else{
          nKeep = 0;
          iTermOff = iOff;
          n = pIter->pLeaf->nn;
          iOff += fts5GetVarint32(&a[iOff], nNew);
          break;
        }
      }
    }while( 1 );
  }

 search_success:
  pIter->iLeafOffset = iOff + nNew;
  if( pIter->iLeafOffset>n || nNew<1 ){
    p->rc = FTS5_CORRUPT;
    return;
  }
  pIter->iTermLeafOffset = pIter->iLeafOffset;
  pIter->iTermLeafPgno = pIter->iLeafPgno;

  fts5BufferSet(&p->rc, &pIter->term, nKeep, pTerm);
  fts5BufferAppendBlob(&p->rc, &pIter->term, nNew, &a[iOff]);

  if( iPgidx>=n ){
    pIter->iEndofDoclist = pIter->pLeaf->nn+1;
  }else{
    int nExtra;
    iPgidx += fts5GetVarint32(&a[iPgidx], nExtra);
    pIter->iEndofDoclist = iTermOff + nExtra;
  }
  pIter->iPgidxOff = iPgidx;

  fts5SegIterLoadRowid(p, pIter);
  fts5SegIterLoadNPos(p, pIter);
}
