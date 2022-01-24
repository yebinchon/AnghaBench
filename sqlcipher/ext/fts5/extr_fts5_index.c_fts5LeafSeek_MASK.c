#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_15__ {scalar_t__ rc; } ;
struct TYPE_14__ {int iLeafOffset; int iTermLeafOffset; int iEndofDoclist; int iPgidxOff; TYPE_11__* pLeaf; int /*<<< orphan*/  term; int /*<<< orphan*/  iLeafPgno; int /*<<< orphan*/  iTermLeafPgno; } ;
struct TYPE_13__ {scalar_t__* p; int szLeaf; int nn; } ;
typedef  TYPE_1__ Fts5SegIter ;
typedef  TYPE_2__ Fts5Index ;

/* Variables and functions */
 void* FTS5_CORRUPT ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const*,int,int) ; 
 scalar_t__ FUNC6 (scalar_t__ const*,int) ; 
 scalar_t__ FUNC7 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(
  Fts5Index *p,                   /* Leave any error code here */
  int bGe,                        /* True for a >= search */
  Fts5SegIter *pIter,             /* Iterator to seek */
  const u8 *pTerm, int nTerm      /* Term to search for */
){
  int iOff;
  const u8 *a = pIter->pLeaf->p;
  int szLeaf = pIter->pLeaf->szLeaf;
  int n = pIter->pLeaf->nn;

  u32 nMatch = 0;
  u32 nKeep = 0;
  u32 nNew = 0;
  u32 iTermOff;
  int iPgidx;                     /* Current offset in pgidx */
  int bEndOfPage = 0;

  FUNC1( p->rc==SQLITE_OK );

  iPgidx = szLeaf;
  iPgidx += FUNC6(&a[iPgidx], iTermOff);
  iOff = iTermOff;
  if( iOff>n ){
    p->rc = FTS5_CORRUPT;
    return;
  }

  while( 1 ){

    /* Figure out how many new bytes are in this term */
    FUNC5(a, iOff, nNew);
    if( nKeep<nMatch ){
      goto search_failed;
    }

    FUNC1( nKeep>=nMatch );
    if( nKeep==nMatch ){
      u32 nCmp;
      u32 i;
      nCmp = (u32)FUNC0(nNew, nTerm-nMatch);
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

    iPgidx += FUNC6(&a[iPgidx], nKeep);
    iTermOff += nKeep;
    iOff = iTermOff;

    if( iOff>=n ){
      p->rc = FTS5_CORRUPT;
      return;
    }

    /* Read the nKeep field of the next term. */
    FUNC5(a, iOff, nKeep);
  }

 search_failed:
  if( bGe==0 ){
    FUNC4(pIter->pLeaf);
    pIter->pLeaf = 0;
    return;
  }else if( bEndOfPage ){
    do {
      FUNC10(p, pIter);
      if( pIter->pLeaf==0 ) return;
      a = pIter->pLeaf->p;
      if( FUNC7(pIter->pLeaf)==0 ){
        iPgidx = pIter->pLeaf->szLeaf;
        iPgidx += FUNC6(&pIter->pLeaf->p[iPgidx], iOff);
        if( iOff<4 || iOff>=pIter->pLeaf->szLeaf ){
          p->rc = FTS5_CORRUPT;
          return;
        }else{
          nKeep = 0;
          iTermOff = iOff;
          n = pIter->pLeaf->nn;
          iOff += FUNC6(&a[iOff], nNew);
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

  FUNC3(&p->rc, &pIter->term, nKeep, pTerm);
  FUNC2(&p->rc, &pIter->term, nNew, &a[iOff]);

  if( iPgidx>=n ){
    pIter->iEndofDoclist = pIter->pLeaf->nn+1;
  }else{
    int nExtra;
    iPgidx += FUNC6(&a[iPgidx], nExtra);
    pIter->iEndofDoclist = iTermOff + nExtra;
  }
  pIter->iPgidxOff = iPgidx;

  FUNC9(p, pIter);
  FUNC8(p, pIter);
}