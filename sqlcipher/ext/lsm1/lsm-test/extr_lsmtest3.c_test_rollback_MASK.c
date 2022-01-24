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
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ DatasourceDefn ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_DATASOURCE_RANDOM ; 
 char* FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*,char*) ; 

void FUNC6(
  const char *zSystem, 
  const char *zPattern, 
  int *pRc
){
  if( *pRc==0 ){
    int bRun = 1;

    if( zPattern ){
      char *zName = FUNC0(zSystem);
      bRun = FUNC5(zPattern, zName);
      FUNC4(zName);
    }

    if( bRun ){
      DatasourceDefn defn = { TEST_DATASOURCE_RANDOM, 10, 15, 50, 100 };
      Datasource *pData = FUNC3(&defn);
      *pRc = FUNC1(zSystem, pData);
      FUNC2(pData);
    }
  }
}