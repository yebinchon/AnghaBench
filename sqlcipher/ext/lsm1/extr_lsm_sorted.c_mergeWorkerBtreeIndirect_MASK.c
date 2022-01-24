#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ iIndirect; TYPE_1__* aSave; } ;
struct TYPE_5__ {int /*<<< orphan*/  iPgno; } ;
typedef  TYPE_2__ MergeWorker ;
typedef  int /*<<< orphan*/  LsmPgno ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(MergeWorker *pMW){
  int rc = LSM_OK;
  if( pMW->iIndirect ){
    LsmPgno iKeyPg = pMW->aSave[1].iPgno;
    rc = FUNC0(pMW, 0, pMW->iIndirect, iKeyPg, 0, 0);
    pMW->iIndirect = 0;
  }
  return rc;
}