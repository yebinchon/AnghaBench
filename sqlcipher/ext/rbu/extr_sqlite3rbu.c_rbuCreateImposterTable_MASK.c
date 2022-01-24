#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ rc; int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
struct TYPE_10__ {scalar_t__ eType; int iTnum; int nTblCol; char** azTblCol; int /*<<< orphan*/  zTbl; scalar_t__* abNotNull; int /*<<< orphan*/ * azTblType; scalar_t__* abTblPk; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ RBU_PK_IPK ; 
 scalar_t__ RBU_PK_VTAB ; 
 scalar_t__ RBU_PK_WITHOUT_ROWID ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TESTCTRL_IMPOSTER ; 
 char* FUNC0 (TYPE_1__*,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void FUNC5(sqlite3rbu *p, RbuObjIter *pIter){
  if( p->rc==SQLITE_OK && pIter->eType!=RBU_PK_VTAB ){
    int tnum = pIter->iTnum;
    const char *zComma = "";
    char *zSql = 0;
    int iCol;
    FUNC4(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 1);

    for(iCol=0; p->rc==SQLITE_OK && iCol<pIter->nTblCol; iCol++){
      const char *zPk = "";
      const char *zCol = pIter->azTblCol[iCol];
      const char *zColl = 0;

      p->rc = FUNC3(
          p->dbMain, "main", pIter->zTbl, zCol, 0, &zColl, 0, 0, 0
      );

      if( pIter->eType==RBU_PK_IPK && pIter->abTblPk[iCol] ){
        /* If the target table column is an "INTEGER PRIMARY KEY", add
        ** "PRIMARY KEY" to the imposter table column declaration. */
        zPk = "PRIMARY KEY ";
      }
      zSql = FUNC0(p, "%z%s\"%w\" %s %sCOLLATE %Q%s", 
          zSql, zComma, zCol, pIter->azTblType[iCol], zPk, zColl,
          (pIter->abNotNull[iCol] ? " NOT NULL" : "")
      );
      zComma = ", ";
    }

    if( pIter->eType==RBU_PK_WITHOUT_ROWID ){
      char *zPk = FUNC2(p, pIter);
      if( zPk ){
        zSql = FUNC0(p, "%z, %z", zSql, zPk);
      }
    }

    FUNC4(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 1, tnum);
    FUNC1(p, p->dbMain, "CREATE TABLE \"rbu_imp_%w\"(%z)%s", 
        pIter->zTbl, zSql, 
        (pIter->eType==RBU_PK_WITHOUT_ROWID ? " WITHOUT ROWID" : "")
    );
    FUNC4(SQLITE_TESTCTRL_IMPOSTER, p->dbMain, "main", 0, 0);
  }
}