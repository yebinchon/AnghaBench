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
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void**,int*,void**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int,void*,int,int*) ; 

void FUNC2(
  TestDb *pDb,                    /* Database handle */
  Datasource *pData,
  int iKey,
  int *pRc                        /* IN/OUT: Error code */
){
  void *pKey; int nKey;           /* Database key to query for */
  void *pVal; int nVal;           /* Expected result of query */

  FUNC0(pData, iKey, &pKey, &nKey, &pVal, &nVal);
  FUNC1(pDb, pKey, nKey, pVal, nVal, pRc);
}