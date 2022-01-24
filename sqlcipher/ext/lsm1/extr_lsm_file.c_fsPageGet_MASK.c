#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int i64 ;
struct TYPE_27__ {int nPagesize; scalar_t__ pCompress; int nOut; TYPE_2__** apHash; int /*<<< orphan*/  nRead; int /*<<< orphan*/  fdDb; int /*<<< orphan*/  pEnv; TYPE_2__* pMapped; scalar_t__ pMap; TYPE_2__* pFree; } ;
struct TYPE_26__ {int flags; scalar_t__ nRef; scalar_t__ pMappedNext; scalar_t__ pLruNext; scalar_t__ pLruPrev; int nData; int /*<<< orphan*/ * aData; struct TYPE_26__* pHashNext; TYPE_3__* pFS; scalar_t__ iPg; struct TYPE_26__* pFreeNext; } ;
struct TYPE_25__ {int /*<<< orphan*/  pRedirect; } ;
typedef  TYPE_1__ Segment ;
typedef  TYPE_2__ Page ;
typedef  scalar_t__ LsmPgno ;
typedef  TYPE_3__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int PAGE_FREE ; 
 int PAGE_HASPREV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_3__*,scalar_t__) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC11 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static int FUNC16(
  FileSystem *pFS,                /* File-system handle */
  Segment *pSeg,                  /* Block redirection to use (or NULL) */
  LsmPgno iPg,                    /* Page id */
  int noContent,                  /* True to not load content from disk */
  Page **ppPg,                    /* OUT: New page handle */
  int *pnSpace                    /* OUT: Bytes of free space */
){
  Page *p;
  int iHash;
  int rc = LSM_OK;

  /* In most cases iReal is the same as iPg. Except, if pSeg->pRedirect is 
  ** not NULL, and the block containing iPg has been redirected, then iReal
  ** is the page number after redirection.  */
  LsmPgno iReal = FUNC13(pFS, (pSeg ? pSeg->pRedirect : 0), iPg);

  FUNC1(pFS);
  FUNC0( iPg>=FUNC2(pFS, 1) );
  FUNC0( iReal>=FUNC2(pFS, 1) );
  *ppPg = 0;

  /* Search the hash-table for the page */
  p = FUNC9(pFS, iReal, &iHash);

  if( p ){
    FUNC0( p->flags & PAGE_FREE );
    if( p->nRef==0 ) FUNC10(pFS, p);
  }else{

    if( FUNC6(pFS, iReal) ){
      i64 iEnd = (i64)iReal * pFS->nPagesize;
      FUNC3(pFS, iEnd, &rc);
      if( rc!=LSM_OK ) return rc;

      if( pFS->pFree ){
        p = pFS->pFree;
        pFS->pFree = p->pFreeNext;
        FUNC0( p->nRef==0 );
      }else{
        p = FUNC14(pFS->pEnv, sizeof(Page), &rc);
        if( rc ) return rc;
        p->pFS = pFS;
      }
      p->aData = &((u8 *)pFS->pMap)[pFS->nPagesize * (iReal-1)];
      p->iPg = iReal;

      /* This page now carries a pointer to the mapping. Link it in to
      ** the FileSystem.pMapped list.  */
      FUNC0( p->pMappedNext==0 );
      p->pMappedNext = pFS->pMapped;
      pFS->pMapped = p;

      FUNC0( pFS->pCompress==0 );
      FUNC0( (p->flags & PAGE_FREE)==0 );
    }else{
      rc = FUNC7(pFS, &p);
      if( rc==LSM_OK ){
        int nSpace = 0;
        p->iPg = iReal;
        p->nRef = 0;
        p->pFS = pFS;
        FUNC0( p->flags==0 || p->flags==PAGE_FREE );

#ifdef LSM_DEBUG
        memset(p->aData, 0x56, pFS->nPagesize);
#endif
        FUNC0( p->pLruNext==0 && p->pLruPrev==0 );
        if( noContent==0 ){
          if( pFS->pCompress ){
            rc = FUNC11(pFS, pSeg, p, &nSpace);
          }else{
            int nByte = pFS->nPagesize;
            i64 iOff = (i64)(iReal-1) * pFS->nPagesize;
            rc = FUNC12(pFS->pEnv, pFS->fdDb, iOff, p->aData, nByte);
          }
          pFS->nRead++;
        }

        /* If the xRead() call was successful (or not attempted), link the
        ** page into the page-cache hash-table. Otherwise, if it failed,
        ** free the buffer. */
        if( rc==LSM_OK && nSpace==0 ){
          p->pHashNext = pFS->apHash[iHash];
          pFS->apHash[iHash] = p;
        }else{
          FUNC8(p);
          p = 0;
          if( pnSpace ) *pnSpace = nSpace;
        }
      }
    }

    FUNC0( (rc==LSM_OK && (p || (pnSpace && *pnSpace)))
         || (rc!=LSM_OK && p==0) 
    );
  }

  if( rc==LSM_OK && p ){
    if( pFS->pCompress==0 && (FUNC5(pFS, iReal) || FUNC4(pFS, iReal)) ){
      p->nData = pFS->nPagesize - 4;
      if( FUNC4(pFS, iReal) && p->nRef==0 ){
        p->aData += 4;
        p->flags |= PAGE_HASPREV;
      }
    }else{
      p->nData = pFS->nPagesize;
    }
    pFS->nOut += (p->nRef==0);
    p->nRef++;
  }
  *ppPg = p;
  return rc;
}