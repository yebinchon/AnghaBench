#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int n; int nAlloc; char* z; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ LsmString ;

/* Variables and functions */
 int LSM_NOMEM ; 
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(LsmString *pStr, int nNew){
  FUNC0( nNew>0 );
  if( pStr->n<0 ) return LSM_NOMEM;
  if( pStr->n + nNew >= pStr->nAlloc ){
    int nAlloc = pStr->n + nNew + 100;
    char *zNew = FUNC2(pStr->pEnv, pStr->z, nAlloc);
    if( zNew==0 ){
      FUNC1(pStr->pEnv, pStr->z);
      nAlloc = 0;
      pStr->n = -1;
    }
    pStr->nAlloc = nAlloc;
    pStr->z = zNew;
  }
  return (pStr->z ? LSM_OK : LSM_NOMEM_BKPT);
}