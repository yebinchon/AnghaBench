#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hook ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_4; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  pOut; } ;
typedef  TYPE_1__ InsertWriteHook ;
typedef  TYPE_2__ DatasourceDefn ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  TEST_DATASOURCE_RANDOM ; 
 int /*<<< orphan*/  do_insert_work_hook ; 
 int /*<<< orphan*/  do_insert_write_hook ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char const*,char*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,void**,int*,void**,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

__attribute__((used)) static int FUNC17(int nArg, char **azArg){
  const char *zDb = "lsm";
  TestDb *pDb = 0;
  int i;
  int rc;
  const int nRow = 1 * 1000 * 1000;

  DatasourceDefn defn = { TEST_DATASOURCE_RANDOM, 8, 15, 80, 150 };
  Datasource *pData = 0;

  if( nArg>1 ){
    FUNC16("Usage: insert ?DATABASE?\n");
    return 1;
  }
  if( nArg==1 ){ zDb = azArg[0]; }

  FUNC15(FUNC6());
  for(i=0; zDb[i] && zDb[i]!='='; i++);
  if( zDb[i] ){
    rc = FUNC7(zDb, "testdb.lsm", 1, &pDb);
  }else{
    rc = FUNC9(zDb, 0, 1, &pDb);
  }

  if( rc!=0 ){
    FUNC16("Error opening db \"%s\": %d\n", zDb, rc);
  }else{
    InsertWriteHook hook;
    FUNC3(&hook, 0, sizeof(hook));
    hook.pOut = FUNC2("writelog.txt", "w");

    pData = FUNC13(&defn);
    FUNC5(pDb, do_insert_work_hook, 0);
    FUNC8(pDb, do_insert_write_hook, (void *)&hook);

    if( rc==0 ){
      for(i=0; i<nRow; i++){
        void *pKey; int nKey;     /* Database key to insert */
        void *pVal; int nVal;     /* Database value to insert */
        FUNC11(pData, i, &pKey, &nKey, &pVal, &nVal);
        FUNC10(pDb, pKey, nKey, pVal, nVal);
      }
    }

    FUNC12(pData);
    FUNC4(pDb);
    FUNC1(&hook);
    FUNC0(hook.pOut);
  }
  FUNC14(FUNC6());

  return rc;
}