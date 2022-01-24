#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_7__ {int /*<<< orphan*/  fdLog; int /*<<< orphan*/  pEnv; } ;
struct TYPE_6__ {size_t n; int /*<<< orphan*/ * z; } ;
typedef  TYPE_1__ LsmString ;
typedef  TYPE_2__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 

int FUNC3(FileSystem *pFS, i64 iOff, int nRead, LsmString *pStr){
  int rc;                         /* Return code */
  FUNC0( pFS->fdLog );
  rc = FUNC2(pStr, nRead);
  if( rc==LSM_OK ){
    rc = FUNC1(pFS->pEnv, pFS->fdLog, iOff, &pStr->z[pStr->n], nRead);
    pStr->n += nRead;
  }
  return rc;
}