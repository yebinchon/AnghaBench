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
 int FUNC0 (char const*,char const*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 

void FUNC4(
  const char *zCfg,
  const char *zFile,
  Datasource *pData,
  int nRow,
  int *pRc
){
  if( *pRc==0 ){
    int rc;
    TestDb *pDb;
    rc = FUNC0(zCfg, zFile, 1, &pDb);
    if( rc==0 ){
      FUNC3(pDb, pData, 0, nRow, &rc);
      FUNC1(&pDb);
      if( rc==0 ) FUNC2(zFile, "log");
    }
    *pRc = rc;
  }
}