#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pClient; } ;
typedef  TYPE_2__ lsm_db ;
struct TYPE_8__ {int /*<<< orphan*/  nData; scalar_t__ pData; } ;
struct TYPE_10__ {TYPE_1__ key; int /*<<< orphan*/  eType; } ;
typedef  TYPE_3__ MultiCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(lsm_db *pDb, MultiCursor *pCsr){
  int rc;
  rc = FUNC1(pCsr, pDb->pClient);
  if( rc==LSM_OK && pCsr->key.pData ){
    rc = FUNC0(pCsr, 
         FUNC2(pCsr->eType), pCsr->key.pData, pCsr->key.nData, +1
    );
  }
  return rc;
}