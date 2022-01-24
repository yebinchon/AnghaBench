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
struct TYPE_4__ {int nShm; scalar_t__* apShm; } ;
typedef  TYPE_1__ lsm_db ;
typedef  int /*<<< orphan*/  ShmChunk ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static ShmChunk * FUNC2(lsm_db *pDb, int iChunk, int *pRc){
  FUNC0( *pRc==LSM_OK );
  if( iChunk<pDb->nShm || LSM_OK==(*pRc = FUNC1(pDb, iChunk+1)) ){
    return (ShmChunk *)(pDb->apShm[iChunk]);
  }
  return 0;
}