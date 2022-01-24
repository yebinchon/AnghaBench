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
typedef  int /*<<< orphan*/  TestDb ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int,void**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(
  TestDb *pControl, 
  TestDb *pDb, 
  void *pKey, int nKey, 
  int *pRc
){
  int rc;
  void *pDbVal1;
  void *pDbVal2;
  int nDbVal1;
  int nDbVal2;

  static int nCall = 0;
  nCall++;

  rc = FUNC1(pControl, pKey, nKey, &pDbVal1, &nDbVal1);
  FUNC2(rc);

  rc = FUNC1(pDb, pKey, nKey, &pDbVal2, &nDbVal2);
  FUNC2(rc);

  if( *pRc==0 
   && (nDbVal1!=nDbVal2 || (nDbVal1>0 && FUNC0(pDbVal1, pDbVal2, nDbVal1)))
  ){
    FUNC2(1);
  }
}