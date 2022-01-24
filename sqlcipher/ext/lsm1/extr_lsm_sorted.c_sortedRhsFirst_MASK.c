#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  nSplitKey; int /*<<< orphan*/  pSplitKey; int /*<<< orphan*/  iSplitTopic; } ;
struct TYPE_14__ {TYPE_1__* pDb; } ;
struct TYPE_13__ {int /*<<< orphan*/  nKey; int /*<<< orphan*/  pKey; int /*<<< orphan*/  eType; scalar_t__ pPg; } ;
struct TYPE_12__ {int /*<<< orphan*/  xCmp; } ;
typedef  TYPE_2__ SegmentPtr ;
typedef  TYPE_3__ MultiCursor ;
typedef  TYPE_4__ Level ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(MultiCursor *pCsr, Level *pLvl, SegmentPtr *pPtr){
  int rc;
  rc = FUNC2(pCsr, pPtr, 0);
  while( pPtr->pPg && rc==LSM_OK ){
    int res = FUNC3(pCsr->pDb->xCmp,
        pLvl->iSplitTopic, pLvl->pSplitKey, pLvl->nSplitKey,
        FUNC0(pPtr->eType), pPtr->pKey, pPtr->nKey
    );
    if( res<=0 ) break;
    rc = FUNC1(pCsr, pPtr, 0);
  }
  return rc;
}