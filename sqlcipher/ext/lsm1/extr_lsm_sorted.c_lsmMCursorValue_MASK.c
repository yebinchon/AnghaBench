#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nData; void* pData; } ;
struct TYPE_8__ {int flags; TYPE_3__ val; TYPE_1__* pDb; int /*<<< orphan*/ * aTree; } ;
struct TYPE_7__ {int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_2__ MultiCursor ;

/* Variables and functions */
 int CURSOR_IGNORE_DELETE ; 
 int CURSOR_SEEK_EQ ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,void**,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,void*,int) ; 

int FUNC4(MultiCursor *pCsr, void **ppVal, int *pnVal){
  void *pVal;
  int nVal;
  int rc;
  if( (pCsr->flags & CURSOR_SEEK_EQ) || pCsr->aTree==0 ){
    rc = LSM_OK;
    nVal = pCsr->val.nData;
    pVal = pCsr->val.pData;
  }else{

    FUNC0( pCsr->aTree );
    FUNC0( FUNC1(pCsr, (pCsr->flags & CURSOR_IGNORE_DELETE)) );

    rc = FUNC2(pCsr, pCsr->aTree[1], &pVal, &nVal);
    if( pVal && rc==LSM_OK ){
      rc = FUNC3(pCsr->pDb->pEnv, &pCsr->val, pVal, nVal);
      pVal = pCsr->val.pData;
    }

    if( rc!=LSM_OK ){
      pVal = 0;
      nVal = 0;
    }
  }
  *ppVal = pVal;
  *pnVal = nVal;
  return rc;
}