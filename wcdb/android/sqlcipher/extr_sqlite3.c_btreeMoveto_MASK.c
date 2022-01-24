#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_12__ {scalar_t__ nField; } ;
typedef  TYPE_1__ UnpackedRecord ;
struct TYPE_14__ {TYPE_2__* pKeyInfo; } ;
struct TYPE_13__ {scalar_t__ nAllField; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ KeyInfo ;
typedef  TYPE_3__ BtCursor ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_NOMEM_BKPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,TYPE_1__*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,void const*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(
  BtCursor *pCur,     /* Cursor open on the btree to be searched */
  const void *pKey,   /* Packed key if the btree is an index */
  i64 nKey,           /* Integer key for tables.  Size of pKey for indices */
  int bias,           /* Bias search to the high end */
  int *pRes           /* Write search results here */
){
  int rc;                    /* Status code */
  UnpackedRecord *pIdxKey;   /* Unpacked index key */

  if( pKey ){
    KeyInfo *pKeyInfo = pCur->pKeyInfo;
    FUNC0( nKey==(i64)(int)nKey );
    pIdxKey = FUNC3(pKeyInfo);
    if( pIdxKey==0 ) return SQLITE_NOMEM_BKPT;
    FUNC4(pKeyInfo, (int)nKey, pKey, pIdxKey);
    if( pIdxKey->nField==0 || pIdxKey->nField>pKeyInfo->nAllField ){
      rc = SQLITE_CORRUPT_BKPT;
      goto moveto_done;
    }
  }else{
    pIdxKey = 0;
  }
  rc = FUNC1(pCur, pIdxKey, nKey, bias, pRes);
moveto_done:
  if( pIdxKey ){
    FUNC2(pCur->pKeyInfo->db, pIdxKey);
  }
  return rc;
}