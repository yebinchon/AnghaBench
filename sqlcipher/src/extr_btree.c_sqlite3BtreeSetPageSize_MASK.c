#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_8__ {int optimalReserve; int btsFlags; int pageSize; int usableSize; int /*<<< orphan*/  pPager; int /*<<< orphan*/  pCursor; } ;
struct TYPE_7__ {TYPE_2__* pBt; } ;
typedef  TYPE_1__ Btree ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int BTS_PAGESIZE_FIXED ; 
 int SQLITE_MAX_PAGE_SIZE ; 
 int SQLITE_OK ; 
 int SQLITE_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int) ; 

int FUNC5(Btree *p, int pageSize, int nReserve, int iFix){
  int rc = SQLITE_OK;
  BtShared *pBt = p->pBt;
  FUNC0( nReserve>=-1 && nReserve<=255 );
  FUNC2(p);
#if SQLITE_HAS_CODEC
  if( nReserve>pBt->optimalReserve ) pBt->optimalReserve = (u8)nReserve;
#endif
  if( pBt->btsFlags & BTS_PAGESIZE_FIXED ){
    FUNC3(p);
    return SQLITE_READONLY;
  }
  if( nReserve<0 ){
    nReserve = pBt->pageSize - pBt->usableSize;
  }
  FUNC0( nReserve>=0 && nReserve<=255 );
  if( pageSize>=512 && pageSize<=SQLITE_MAX_PAGE_SIZE &&
        ((pageSize-1)&pageSize)==0 ){
    FUNC0( (pageSize & 7)==0 );
    FUNC0( !pBt->pCursor );
    pBt->pageSize = (u32)pageSize;
    FUNC1(pBt);
  }
  rc = FUNC4(pBt->pPager, &pBt->pageSize, nReserve);
  pBt->usableSize = pBt->pageSize - (u16)nReserve;
  if( iFix ) pBt->btsFlags |= BTS_PAGESIZE_FIXED;
  FUNC3(p);
  return rc;
}