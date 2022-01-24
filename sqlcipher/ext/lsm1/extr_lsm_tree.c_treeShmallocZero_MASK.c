#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lsm_db ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(lsm_db *pDb, int nByte, u32 *piPtr, int *pRc){
  u32 iPtr;
  void *p;
  iPtr = FUNC2(pDb, 1, nByte, pRc);
  p = FUNC3(pDb, iPtr);
  if( p ){
    FUNC0( *pRc==LSM_OK );
    FUNC1(p, 0, nByte);
    *piPtr = iPtr;
  }
  return p;
}