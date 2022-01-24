#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_18__ {int usableSize; int /*<<< orphan*/  mutex; } ;
struct TYPE_17__ {int nLocal; int nPayload; int nSize; } ;
struct TYPE_16__ {unsigned char* aDataEnd; int /*<<< orphan*/  pDbPage; TYPE_3__* pBt; int /*<<< orphan*/  (* xParseCell ) (TYPE_1__*,unsigned char*,TYPE_2__*) ;} ;
typedef  int Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ CellInfo ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int SQLITE_CORRUPT_BKPT ; 
 int FUNC0 (TYPE_1__*) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_1__*,int) ; 
 int FUNC5 (unsigned char*) ; 
 int FUNC6 (TYPE_3__*,int,TYPE_1__**,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,unsigned char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(
  MemPage *pPage,          /* The page that contains the Cell */
  unsigned char *pCell,    /* First byte of the Cell */
  CellInfo *pInfo          /* Size information about the cell */
){
  BtShared *pBt;
  Pgno ovflPgno;
  int rc;
  int nOvfl;
  u32 ovflPageSize;

  FUNC1( FUNC9(pPage->pBt->mutex) );
  pPage->xParseCell(pPage, pCell, pInfo);
  if( pInfo->nLocal==pInfo->nPayload ){
    return SQLITE_OK;  /* No overflow pages. Return without doing anything */
  }
  FUNC11( pCell + pInfo->nSize == pPage->aDataEnd );
  FUNC11( pCell + (pInfo->nSize-1) == pPage->aDataEnd );
  if( pCell + pInfo->nSize > pPage->aDataEnd ){
    /* Cell extends past end of page */
    return FUNC0(pPage);
  }
  ovflPgno = FUNC5(pCell + pInfo->nSize - 4);
  pBt = pPage->pBt;
  FUNC1( pBt->usableSize > 4 );
  ovflPageSize = pBt->usableSize - 4;
  nOvfl = (pInfo->nPayload - pInfo->nLocal + ovflPageSize - 1)/ovflPageSize;
  FUNC1( nOvfl>0 || 
    (CORRUPT_DB && (pInfo->nPayload + ovflPageSize)<ovflPageSize)
  );
  while( nOvfl-- ){
    Pgno iNext = 0;
    MemPage *pOvfl = 0;
    if( ovflPgno<2 || ovflPgno>FUNC3(pBt) ){
      /* 0 is not a legal page number and page 1 cannot be an 
      ** overflow page. Therefore if ovflPgno<2 or past the end of the 
      ** file the database must be corrupt. */
      return SQLITE_CORRUPT_BKPT;
    }
    if( nOvfl ){
      rc = FUNC6(pBt, ovflPgno, &pOvfl, &iNext);
      if( rc ) return rc;
    }

    if( ( pOvfl || ((pOvfl = FUNC2(pBt, ovflPgno))!=0) )
     && FUNC7(pOvfl->pDbPage)!=1
    ){
      /* There is no reason any cursor should have an outstanding reference 
      ** to an overflow page belonging to a cell that is being deleted/updated.
      ** So if there exists more than one reference to this page, then it 
      ** must not really be an overflow page and the database must be corrupt. 
      ** It is helpful to detect this before calling freePage2(), as 
      ** freePage2() may zero the page contents if secure-delete mode is
      ** enabled. If this 'overflow' page happens to be a page that the
      ** caller is iterating through or using in some other way, this
      ** can be problematic.
      */
      rc = SQLITE_CORRUPT_BKPT;
    }else{
      rc = FUNC4(pBt, pOvfl, ovflPgno);
    }

    if( pOvfl ){
      FUNC8(pOvfl->pDbPage);
    }
    if( rc ) return rc;
    ovflPgno = iNext;
  }
  return SQLITE_OK;
}