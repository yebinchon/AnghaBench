#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int i64 ;
typedef  int i16 ;
struct TYPE_6__ {scalar_t__ memDb; scalar_t__ dbSize; int pageSize; scalar_t__ eState; char* pTmpSpace; int nReserve; int /*<<< orphan*/  pPCache; int /*<<< orphan*/  fd; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_OPEN ; 
 int SQLITE_MAX_PAGE_SIZE ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

int FUNC11(Pager *pPager, u32 *pPageSize, int nReserve){
  int rc = SQLITE_OK;

  /* It is not possible to do a full assert_pager_state() here, as this
  ** function may be called from within PagerOpen(), before the state
  ** of the Pager object is internally consistent.
  **
  ** At one point this function returned an error if the pager was in 
  ** PAGER_ERROR state. But since PAGER_ERROR state guarantees that
  ** there is at least one outstanding page reference, this function
  ** is a no-op for that case anyhow.
  */

  u32 pageSize = *pPageSize;
  FUNC0( pageSize==0 || (pageSize>=512 && pageSize<=SQLITE_MAX_PAGE_SIZE) );
  if( (pPager->memDb==0 || pPager->dbSize==0)
   && FUNC9(pPager->pPCache)==0 
   && pageSize && pageSize!=(u32)pPager->pageSize 
  ){
    char *pNew = NULL;             /* New temp space */
    i64 nByte = 0;

    if( pPager->eState>PAGER_OPEN && FUNC1(pPager->fd) ){
      rc = FUNC6(pPager->fd, &nByte);
    }
    if( rc==SQLITE_OK ){
      /* 8 bytes of zeroed overrun space is sufficient so that the b-tree
      * cell header parser will never run off the end of the allocation */
      pNew = (char *)FUNC8(pageSize+8);
      if( !pNew ){
        rc = SQLITE_NOMEM_BKPT;
      }else{
        FUNC2(pNew+pageSize, 0, 8);
      }
    }

    if( rc==SQLITE_OK ){
      FUNC5(pPager);
      rc = FUNC10(pPager->pPCache, pageSize);
    }
    if( rc==SQLITE_OK ){
      FUNC7(pPager->pTmpSpace);
      pPager->pTmpSpace = pNew;
      pPager->dbSize = (Pgno)((nByte+pageSize-1)/pageSize);
      pPager->pageSize = pageSize;
    }else{
      FUNC7(pNew);
    }
  }

  *pPageSize = pPager->pageSize;
  if( rc==SQLITE_OK ){
    if( nReserve<0 ) nReserve = pPager->nReserve;
    FUNC0( nReserve>=0 && nReserve<1000 );
    pPager->nReserve = (i16)nReserve;
    FUNC4(pPager);
    FUNC3(pPager);
  }
  return rc;
}