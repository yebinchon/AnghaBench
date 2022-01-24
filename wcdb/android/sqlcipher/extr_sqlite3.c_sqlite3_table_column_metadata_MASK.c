#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_18__ {int nCol; int iPKey; int tabFlags; TYPE_3__* aCol; scalar_t__ pSelect; } ;
typedef  TYPE_2__ Table ;
struct TYPE_19__ {char* zColl; scalar_t__ notNull; int colFlags; int /*<<< orphan*/  zName; } ;
typedef  TYPE_3__ Column ;

/* Variables and functions */
 int COLFLAG_PRIMKEY ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int SQLITE_ERROR ; 
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int TF_Autoincrement ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char*,char*) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,char const*,char const*) ; 
 int FUNC8 (TYPE_1__*,char**) ; 
 scalar_t__ FUNC9 (char const*) ; 
 char* FUNC10 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 char* sqlite3StrBINARY ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(
  sqlite3 *db,                /* Connection handle */
  const char *zDbName,        /* Database name or NULL */
  const char *zTableName,     /* Table name */
  const char *zColumnName,    /* Column name */
  char const **pzDataType,    /* OUTPUT: Declared data type */
  char const **pzCollSeq,     /* OUTPUT: Collation sequence name */
  int *pNotNull,              /* OUTPUT: True if NOT NULL constraint exists */
  int *pPrimaryKey,           /* OUTPUT: True if column part of PK */
  int *pAutoinc               /* OUTPUT: True if column is auto-increment */
){
  int rc;
  char *zErrMsg = 0;
  Table *pTab = 0;
  Column *pCol = 0;
  int iCol = 0;
  char const *zDataType = 0;
  char const *zCollSeq = 0;
  int notnull = 0;
  int primarykey = 0;
  int autoinc = 0;


#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) || zTableName==0 ){
    return SQLITE_MISUSE_BKPT;
  }
#endif

  /* Ensure the database schema has been loaded */
  FUNC13(db->mutex);
  FUNC2(db);
  rc = FUNC8(db, &zErrMsg);
  if( SQLITE_OK!=rc ){
    goto error_out;
  }

  /* Locate the table in question */
  pTab = FUNC7(db, zTableName, zDbName);
  if( !pTab || pTab->pSelect ){
    pTab = 0;
    goto error_out;
  }

  /* Find the column for which info is requested */
  if( zColumnName==0 ){
    /* Query for existance of table only */
  }else{
    for(iCol=0; iCol<pTab->nCol; iCol++){
      pCol = &pTab->aCol[iCol];
      if( 0==FUNC12(pCol->zName, zColumnName) ){
        break;
      }
    }
    if( iCol==pTab->nCol ){
      if( FUNC0(pTab) && FUNC9(zColumnName) ){
        iCol = pTab->iPKey;
        pCol = iCol>=0 ? &pTab->aCol[iCol] : 0;
      }else{
        pTab = 0;
        goto error_out;
      }
    }
  }

  /* The following block stores the meta information that will be returned
  ** to the caller in local variables zDataType, zCollSeq, notnull, primarykey
  ** and autoinc. At this point there are two possibilities:
  ** 
  **     1. The specified column name was rowid", "oid" or "_rowid_" 
  **        and there is no explicitly declared IPK column. 
  **
  **     2. The table is not a view and the column name identified an 
  **        explicitly declared column. Copy meta information from *pCol.
  */ 
  if( pCol ){
    zDataType = FUNC4(pCol,0);
    zCollSeq = pCol->zColl;
    notnull = pCol->notNull!=0;
    primarykey  = (pCol->colFlags & COLFLAG_PRIMKEY)!=0;
    autoinc = pTab->iPKey==iCol && (pTab->tabFlags & TF_Autoincrement)!=0;
  }else{
    zDataType = "INTEGER";
    primarykey = 1;
  }
  if( !zCollSeq ){
    zCollSeq = sqlite3StrBINARY;
  }

error_out:
  FUNC3(db);

  /* Whether the function call succeeded or failed, set the output parameters
  ** to whatever their local counterparts contain. If an error did occur,
  ** this has the effect of zeroing all output parameters.
  */
  if( pzDataType ) *pzDataType = zDataType;
  if( pzCollSeq ) *pzCollSeq = zCollSeq;
  if( pNotNull ) *pNotNull = notnull;
  if( pPrimaryKey ) *pPrimaryKey = primarykey;
  if( pAutoinc ) *pAutoinc = autoinc;

  if( SQLITE_OK==rc && !pTab ){
    FUNC5(db, zErrMsg);
    zErrMsg = FUNC10(db, "no such table column: %s.%s", zTableName,
        zColumnName);
    rc = SQLITE_ERROR;
  }
  FUNC6(db, rc, (zErrMsg?"%s":0), zErrMsg);
  FUNC5(db, zErrMsg);
  rc = FUNC1(db, rc);
  FUNC14(db->mutex);
  return rc;
}