#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_5__ {char* zErrMsg; } ;
typedef  TYPE_1__ sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {int nCol; int inTransaction; int zTableName; int /*<<< orphan*/ * aCol; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ echo_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_INTEGER ; 
 int SQLITE_NOMEM ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char**,char*,int,int*) ; 

int FUNC12(
  sqlite3_vtab *tab, 
  int nData, 
  sqlite3_value **apData, 
  sqlite_int64 *pRowid
){
  echo_vtab *pVtab = (echo_vtab *)tab;
  sqlite3 *db = pVtab->db;
  int rc = SQLITE_OK;

  sqlite3_stmt *pStmt = 0;
  char *z = 0;               /* SQL statement to execute */
  int bindArgZero = 0;       /* True to bind apData[0] to sql var no. nData */
  int bindArgOne = 0;        /* True to bind apData[1] to sql var no. 1 */
  int i;                     /* Counter variable used by for loops */

  FUNC0( nData==pVtab->nCol+2 || nData==1 );

  /* Ticket #3083 - make sure we always start a transaction prior to
  ** making any changes to a virtual table */
  FUNC0( pVtab->inTransaction );

  if( FUNC1(pVtab, "xUpdate") ){
    return SQLITE_ERROR;
  }

  /* If apData[0] is an integer and nData>1 then do an UPDATE */
  if( nData>1 && FUNC10(apData[0])==SQLITE_INTEGER ){
    char *zSep = " SET";
    z = FUNC7("UPDATE %Q", pVtab->zTableName);
    if( !z ){
      rc = SQLITE_NOMEM;
    }

    bindArgOne = (apData[1] && FUNC10(apData[1])==SQLITE_INTEGER);
    bindArgZero = 1;

    if( bindArgOne ){
       FUNC11(&z, " SET rowid=?1 ", 0, &rc);
       zSep = ",";
    }
    for(i=2; i<nData; i++){
      if( apData[i]==0 ) continue;
      FUNC11(&z, FUNC7(
          "%s %Q=?%d", zSep, pVtab->aCol[i-2], i), 1, &rc);
      zSep = ",";
    }
    FUNC11(&z, FUNC7(" WHERE rowid=?%d", nData), 1, &rc);
  }

  /* If apData[0] is an integer and nData==1 then do a DELETE */
  else if( nData==1 && FUNC10(apData[0])==SQLITE_INTEGER ){
    z = FUNC7("DELETE FROM %Q WHERE rowid = ?1", pVtab->zTableName);
    if( !z ){
      rc = SQLITE_NOMEM;
    }
    bindArgZero = 1;
  }

  /* If the first argument is NULL and there are more than two args, INSERT */
  else if( nData>2 && FUNC10(apData[0])==SQLITE_NULL ){
    int ii;
    char *zInsert = 0;
    char *zValues = 0;
  
    zInsert = FUNC7("INSERT INTO %Q (", pVtab->zTableName);
    if( !zInsert ){
      rc = SQLITE_NOMEM;
    }
    if( FUNC10(apData[1])==SQLITE_INTEGER ){
      bindArgOne = 1;
      zValues = FUNC7("?");
      FUNC11(&zInsert, "rowid", 0, &rc);
    }

    FUNC0((pVtab->nCol+2)==nData);
    for(ii=2; ii<nData; ii++){
      FUNC11(&zInsert, 
          FUNC7("%s%Q", zValues?", ":"", pVtab->aCol[ii-2]), 1, &rc);
      FUNC11(&zValues, 
          FUNC7("%s?%d", zValues?", ":"", ii), 1, &rc);
    }

    FUNC11(&z, zInsert, 1, &rc);
    FUNC11(&z, ") VALUES(", 0, &rc);
    FUNC11(&z, zValues, 1, &rc);
    FUNC11(&z, ")", 0, &rc);
  }

  /* Anything else is an error */
  else{
    FUNC0(0);
    return SQLITE_ERROR;
  }

  if( rc==SQLITE_OK ){
    rc = FUNC8(db, z, -1, &pStmt, 0);
  }
  FUNC0( rc!=SQLITE_OK || pStmt );
  FUNC5(z);
  if( rc==SQLITE_OK ) {
    if( bindArgZero ){
      FUNC2(pStmt, nData, apData[0]);
    }
    if( bindArgOne ){
      FUNC2(pStmt, 1, apData[1]);
    }
    for(i=2; i<nData && rc==SQLITE_OK; i++){
      if( apData[i] ) rc = FUNC2(pStmt, i, apData[i]);
    }
    if( rc==SQLITE_OK ){
      FUNC9(pStmt);
      rc = FUNC4(pStmt);
    }else{
      FUNC4(pStmt);
    }
  }

  if( pRowid && rc==SQLITE_OK ){
    *pRowid = FUNC6(db);
  }
  if( rc!=SQLITE_OK ){
    tab->zErrMsg = FUNC7("echo-vtab-error: %s", FUNC3(db));
  }

  return rc;
}