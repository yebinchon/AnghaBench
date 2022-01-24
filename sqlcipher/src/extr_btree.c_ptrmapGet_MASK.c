#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {scalar_t__ usableSize; int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  int /*<<< orphan*/  DbPage ;
typedef  TYPE_1__ BtShared ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int SQLITE_CORRUPT_BKPT ; 
 int FUNC2 (int) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(BtShared *pBt, Pgno key, u8 *pEType, Pgno *pPgno){
  DbPage *pDbPage;   /* The pointer map page */
  int iPtrmap;       /* Pointer map page index */
  u8 *pPtrmap;       /* Pointer map page data */
  int offset;        /* Offset of entry in pointer map */
  int rc;

  FUNC3( FUNC8(pBt->mutex) );

  iPtrmap = FUNC0(pBt, key);
  rc = FUNC5(pBt->pPager, iPtrmap, &pDbPage, 0);
  if( rc!=0 ){
    return rc;
  }
  pPtrmap = (u8 *)FUNC6(pDbPage);

  offset = FUNC1(iPtrmap, key);
  if( offset<0 ){
    FUNC7(pDbPage);
    return SQLITE_CORRUPT_BKPT;
  }
  FUNC3( offset <= (int)pBt->usableSize-5 );
  FUNC3( pEType!=0 );
  *pEType = pPtrmap[offset];
  if( pPgno ) *pPgno = FUNC4(&pPtrmap[offset+1]);

  FUNC7(pDbPage);
  if( *pEType<1 || *pEType>5 ) return FUNC2(iPtrmap);
  return SQLITE_OK;
}