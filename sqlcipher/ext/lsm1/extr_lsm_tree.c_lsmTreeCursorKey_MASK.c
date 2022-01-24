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
struct TYPE_7__ {int nKey; int flags; } ;
typedef  TYPE_1__ TreeKey ;
struct TYPE_8__ {int /*<<< orphan*/  blob; TYPE_1__* pSave; } ;
typedef  TYPE_2__ TreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(TreeCursor *pCsr, int *pFlags, void **ppKey, int *pnKey){
  TreeKey *pTreeKey;
  int rc = LSM_OK;

  FUNC0( FUNC2(pCsr) );

  pTreeKey = pCsr->pSave;
  if( !pTreeKey ){
    pTreeKey = FUNC1(pCsr, &pCsr->blob, &rc);
  }
  if( rc==LSM_OK ){
    *pnKey = pTreeKey->nKey;
    if( pFlags ) *pFlags = pTreeKey->flags;
    *ppKey = (void *)&pTreeKey[1];
  }

  return rc;
}