#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {int nOpenTrans; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ SqlDb ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(TestDb *pTestDb, int iLevel){
  int i;
  SqlDb *pDb = (SqlDb *)pTestDb;

  /* iLevel==0 is a no-op */
  if( iLevel==0 ) return 0;

  /* If there are no transactions at all open, open a read transaction. */
  if( pDb->nOpenTrans==0 ){
    int rc = FUNC0(pDb->db, 
        "BEGIN; SELECT * FROM sqlite_master LIMIT 1;" , 0, 0, 0
    );
    if( rc!=0 ) return rc;
    pDb->nOpenTrans = 1;
  }

  /* Open any required write transactions */
  for(i=pDb->nOpenTrans; i<iLevel; i++){
    char *zSql = FUNC2("SAVEPOINT x%d", i);
    int rc = FUNC0(pDb->db, zSql, 0, 0, 0);
    FUNC1(zSql);
    if( rc!=SQLITE_OK ) return rc;
  }

  pDb->nOpenTrans = iLevel;
  return 0;
}