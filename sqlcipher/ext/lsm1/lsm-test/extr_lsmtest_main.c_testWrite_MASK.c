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
 int FUNC0 (int /*<<< orphan*/ *,void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(
  TestDb *pDb,                    /* Database handle */
  void *pKey, int nKey,           /* Key to query database for */
  void *pVal, int nVal,           /* Value to write */
  int *pRc                        /* IN/OUT: Error code */
){
  if( *pRc==0 ){
    int rc;
static int nCall = 0;
nCall++;
    rc = FUNC0(pDb, pKey, nKey, pVal, nVal);
    FUNC1(rc);
  }
}