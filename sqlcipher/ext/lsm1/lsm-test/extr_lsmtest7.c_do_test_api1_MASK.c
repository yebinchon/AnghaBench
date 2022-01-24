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
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ DatasourceDefn ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_DATASOURCE_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC9(const char *zPattern, int *pRc){
  if( FUNC2(pRc, zPattern, "api1.lsm") ){
    const DatasourceDefn defn = { TEST_DATASOURCE_RANDOM, 10, 15, 200, 250 };
    Datasource *pData;
    TestDb *pDb;
    int rc = 0;

    pDb = FUNC7("lsm_lomem", 1, &rc);
    pData = FUNC6(&defn);
    FUNC8(pDb, pData, 0, 1000, pRc);

    FUNC0(FUNC1(pDb), pRc);

    FUNC5(pData);
    FUNC4(&pDb);

    FUNC3(*pRc);
  }
}