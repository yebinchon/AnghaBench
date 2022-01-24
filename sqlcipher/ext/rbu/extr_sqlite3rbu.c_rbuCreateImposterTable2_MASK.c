#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ rc; int /*<<< orphan*/  dbMain; int /*<<< orphan*/  zErrmsg; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_9__ {scalar_t__ eType; int iPkTnum; int /*<<< orphan*/ * azTblType; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ RBU_PK_EXTERNAL ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_TESTCTRL_IMPOSTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_1__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void FUNC11(sqlite3rbu *p, RbuObjIter *pIter){
  if( p->rc==SQLITE_OK && pIter->eType==RBU_PK_EXTERNAL ){
    int tnum = pIter->iPkTnum;    /* Root page of PK index */
    sqlite3_stmt *pQuery = 0;     /* SELECT name ... WHERE rootpage = $tnum */
    const char *zIdx = 0;         /* Name of PK index */
    sqlite3_stmt *pXInfo = 0;     /* PRAGMA main.index_xinfo = $zIdx */
    const char *zComma = "";
    char *zCols = 0;              /* Used to build up list of table cols */
    char *zPk = 0;                /* Used to build up table PK declaration */

    /* Figure out the name of the primary key index for the current table.
    ** This is needed for the argument to "PRAGMA index_xinfo". Set
    ** zIdx to point to a nul-terminated string containing this name. */
    p->rc = FUNC0(p->dbMain, &pQuery, &p->zErrmsg, 
        "SELECT name FROM sqlite_master WHERE rootpage = ?"
    );
    if( p->rc==SQLITE_OK ){
      FUNC5(pQuery, 1, tnum);
      if( SQLITE_ROW==FUNC9(pQuery) ){
        zIdx = (const char*)FUNC7(pQuery, 0);
      }
    }
    if( zIdx ){
      p->rc = FUNC1(p->dbMain, &pXInfo, &p->zErrmsg,
          FUNC8("PRAGMA main.index_xinfo = %Q", zIdx)
      );
    }
    FUNC2(p, pQuery);

    while( p->rc==SQLITE_OK && SQLITE_ROW==FUNC9(pXInfo) ){
      int bKey = FUNC6(pXInfo, 5);
      if( bKey ){
        int iCid = FUNC6(pXInfo, 1);
        int bDesc = FUNC6(pXInfo, 3);
        const char *zCollate = (const char*)FUNC7(pXInfo, 4);
        zCols = FUNC3(p, "%z%sc%d %s COLLATE %Q", zCols, zComma, 
            iCid, pIter->azTblType[iCid], zCollate
        );
        zPk = FUNC3(p, "%z%sc%d%s", zPk, zComma, iCid, bDesc?" DESC":"");
        zComma = ", ";
      }
    }
    zCols = FUNC3(p, "%z, id INTEGER", zCols);
    FUNC2(p, pXInfo);

    FUNC10(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 1, tnum);
    FUNC4(p, p->dbMain,
        "CREATE TABLE rbu_imposter2(%z, PRIMARY KEY(%z)) WITHOUT ROWID", 
        zCols, zPk
    );
    FUNC10(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 0);
  }
}