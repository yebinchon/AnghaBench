
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ i64 ;
struct TYPE_12__ {int szLeaf; scalar_t__* p; } ;
struct TYPE_11__ {int rc; TYPE_1__* pConfig; } ;
struct TYPE_10__ {int iLeafOffset; int iEndofDoclist; int nRowidOffset; int* aRowidOffset; int iRowidOffset; int iRowid; TYPE_8__* pLeaf; } ;
struct TYPE_9__ {int eDetail; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Index ;


 int ASSERT_SZLEAF_OK (TYPE_8__*) ;
 int FTS5_DETAIL_NONE ;
 int SQLITE_NOMEM ;
 scalar_t__ fts5GetPoslistSize (scalar_t__*,int*,int*) ;
 scalar_t__ fts5GetVarint (scalar_t__*,int *) ;
 int fts5SegIterLoadNPos (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ sqlite3_realloc64 (int*,int) ;

__attribute__((used)) static void fts5SegIterReverseInitPage(Fts5Index *p, Fts5SegIter *pIter){
  int eDetail = p->pConfig->eDetail;
  int n = pIter->pLeaf->szLeaf;
  int i = pIter->iLeafOffset;
  u8 *a = pIter->pLeaf->p;
  int iRowidOffset = 0;

  if( n>pIter->iEndofDoclist ){
    n = pIter->iEndofDoclist;
  }

  ASSERT_SZLEAF_OK(pIter->pLeaf);
  while( 1 ){
    i64 iDelta = 0;

    if( eDetail==FTS5_DETAIL_NONE ){

      if( i<n && a[i]==0 ){
        i++;
        if( i<n && a[i]==0 ) i++;
      }
    }else{
      int nPos;
      int bDummy;
      i += fts5GetPoslistSize(&a[i], &nPos, &bDummy);
      i += nPos;
    }
    if( i>=n ) break;
    i += fts5GetVarint(&a[i], (u64*)&iDelta);
    pIter->iRowid += iDelta;


    if( iRowidOffset>=pIter->nRowidOffset ){
      int nNew = pIter->nRowidOffset + 8;
      int *aNew = (int*)sqlite3_realloc64(pIter->aRowidOffset,nNew*sizeof(int));
      if( aNew==0 ){
        p->rc = SQLITE_NOMEM;
        break;
      }
      pIter->aRowidOffset = aNew;
      pIter->nRowidOffset = nNew;
    }

    pIter->aRowidOffset[iRowidOffset++] = pIter->iLeafOffset;
    pIter->iLeafOffset = i;
  }
  pIter->iRowidOffset = iRowidOffset;
  fts5SegIterLoadNPos(p, pIter);
}
