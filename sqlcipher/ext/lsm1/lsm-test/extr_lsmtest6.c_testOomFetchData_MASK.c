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
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  OomTest ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void**,int*,void**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,void*,int,int*) ; 

__attribute__((used)) static void FUNC2(
  OomTest *pOom,
  lsm_db *pDb,
  Datasource *pData,
  int iKey,
  int *pRc
){
  void *pKey; int nKey;
  void *pVal; int nVal;
  FUNC0(pData, iKey, &pKey, &nKey, &pVal, &nVal);
  FUNC1(pOom, pDb, pKey, nKey, pVal, nVal, pRc);
}