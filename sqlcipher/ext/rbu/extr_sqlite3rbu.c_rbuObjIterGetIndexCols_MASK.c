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
struct TYPE_6__ {int rc; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {scalar_t__ eType; scalar_t__* abTblPk; int nTblCol; char** azTblCol; char** azTblType; scalar_t__ bUnique; int /*<<< orphan*/  zIdx; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ RBU_PK_IPK ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC9(
  sqlite3rbu *p,                  /* RBU object */
  RbuObjIter *pIter,              /* Object iterator for column names */
  char **pzImposterCols,          /* OUT: Columns for imposter table */
  char **pzImposterPk,            /* OUT: Imposter PK clause */
  char **pzWhere,                 /* OUT: WHERE clause */
  int *pnBind                     /* OUT: Trbul number of columns */
){
  int rc = p->rc;                 /* Error code */
  int rc2;                        /* sqlite3_finalize() return code */
  char *zRet = 0;                 /* String to return */
  char *zImpCols = 0;             /* String to return via *pzImposterCols */
  char *zImpPK = 0;               /* String to return via *pzImposterPK */
  char *zWhere = 0;               /* String to return via *pzWhere */
  int nBind = 0;                  /* Value to return via *pnBind */
  const char *zCom = "";          /* Set to ", " later on */
  const char *zAnd = "";          /* Set to " AND " later on */
  sqlite3_stmt *pXInfo = 0;       /* PRAGMA index_xinfo = ? */

  if( rc==SQLITE_OK ){
    FUNC0( p->zErrmsg==0 );
    rc = FUNC1(p->dbMain, &pXInfo, &p->zErrmsg,
        FUNC7("PRAGMA main.index_xinfo = %Q", pIter->zIdx)
    );
  }

  while( rc==SQLITE_OK && SQLITE_ROW==FUNC8(pXInfo) ){
    int iCid = FUNC3(pXInfo, 1);
    int bDesc = FUNC3(pXInfo, 3);
    const char *zCollate = (const char*)FUNC4(pXInfo, 4);
    const char *zCol;
    const char *zType;

    if( iCid<0 ){
      /* An integer primary key. If the table has an explicit IPK, use
      ** its name. Otherwise, use "rbu_rowid".  */
      if( pIter->eType==RBU_PK_IPK ){
        int i;
        for(i=0; pIter->abTblPk[i]==0; i++);
        FUNC0( i<pIter->nTblCol );
        zCol = pIter->azTblCol[i];
      }else if( FUNC2(p) ){
        zCol = "_rowid_";
      }else{
        zCol = "rbu_rowid";
      }
      zType = "INTEGER";
    }else{
      zCol = pIter->azTblCol[iCid];
      zType = pIter->azTblType[iCid];
    }

    zRet = FUNC7("%z%s\"%w\" COLLATE %Q", zRet, zCom, zCol, zCollate);
    if( pIter->bUnique==0 || FUNC3(pXInfo, 5) ){
      const char *zOrder = (bDesc ? " DESC" : "");
      zImpPK = FUNC7("%z%s\"rbu_imp_%d%w\"%s", 
          zImpPK, zCom, nBind, zCol, zOrder
      );
    }
    zImpCols = FUNC7("%z%s\"rbu_imp_%d%w\" %s COLLATE %Q", 
        zImpCols, zCom, nBind, zCol, zType, zCollate
    );
    zWhere = FUNC7(
        "%z%s\"rbu_imp_%d%w\" IS ?", zWhere, zAnd, nBind, zCol
    );
    if( zRet==0 || zImpPK==0 || zImpCols==0 || zWhere==0 ) rc = SQLITE_NOMEM;
    zCom = ", ";
    zAnd = " AND ";
    nBind++;
  }

  rc2 = FUNC5(pXInfo);
  if( rc==SQLITE_OK ) rc = rc2;

  if( rc!=SQLITE_OK ){
    FUNC6(zRet);
    FUNC6(zImpCols);
    FUNC6(zImpPK);
    FUNC6(zWhere);
    zRet = 0;
    zImpCols = 0;
    zImpPK = 0;
    zWhere = 0;
    p->rc = rc;
  }

  *pzImposterCols = zImpCols;
  *pzImposterPk = zImpPK;
  *pzWhere = zWhere;
  *pnBind = nBind;
  return zRet;
}