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
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int /*<<< orphan*/  nDel; int /*<<< orphan*/  iDelStart; int /*<<< orphan*/  nIns; int /*<<< orphan*/  iInsStart; } ;
typedef  TYPE_1__ SetupStep ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_CONFIG_AUTOFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC8(
  TestDb *pDb, 
  Datasource *pData, 
  const SetupStep *pStep, 
  int *pRc
){
  FUNC7(pDb, pData, pStep->iInsStart, pStep->nIns, pRc);
  FUNC6(pDb, pData, pStep->iDelStart, pStep->nDel, pRc);
  if( *pRc==0 ){
    int nSave = -1;
    int nBuf = 64;
    lsm_db *db = FUNC5(pDb);

    FUNC3(db, LSM_CONFIG_AUTOFLUSH, &nSave);
    FUNC3(db, LSM_CONFIG_AUTOFLUSH, &nBuf);
    FUNC0(db, 1);
    FUNC2(db, 0);
    FUNC3(db, LSM_CONFIG_AUTOFLUSH, &nSave);

    *pRc = FUNC4(db, 0, 0, 0);
    if( *pRc==0 ){
      *pRc = FUNC1(db, 0);
    }
  }
}