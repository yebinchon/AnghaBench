#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {TYPE_1__* aDb; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_33__ {scalar_t__ n; int /*<<< orphan*/ * z; } ;
typedef  TYPE_4__ Token ;
struct TYPE_34__ {int nCol; int /*<<< orphan*/  zName; TYPE_2__* aCol; int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_5__ Table ;
struct TYPE_36__ {TYPE_3__* db; } ;
struct TYPE_35__ {int /*<<< orphan*/ * a; } ;
struct TYPE_31__ {int /*<<< orphan*/  zName; } ;
struct TYPE_30__ {char* zDbSName; } ;
typedef  TYPE_6__ SrcList ;
typedef  TYPE_7__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  MASTER_NAME ; 
 int /*<<< orphan*/  SQLITE_ALTER_TABLE ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_7__*,TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,char const*,int) ; 
 scalar_t__ FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 char* FUNC11 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,char*,char const*,char const*,char const*,int,...) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_6__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 

void FUNC16(
  Parse *pParse,                  /* Parsing context */
  SrcList *pSrc,                  /* Table being altered.  pSrc->nSrc==1 */
  Token *pOld,                    /* Name of column being changed */
  Token *pNew                     /* New column name */
){
  sqlite3 *db = pParse->db;       /* Database connection */
  Table *pTab;                    /* Table being updated */
  int iCol;                       /* Index of column being renamed */
  char *zOld = 0;                 /* Old column name */
  char *zNew = 0;                 /* New column name */
  const char *zDb;                /* Name of schema containing the table */
  int iSchema;                    /* Index of the schema */
  int bQuote;                     /* True to quote the new name */

  /* Locate the table to be altered */
  pTab = FUNC9(pParse, 0, &pSrc->a[0]);
  if( !pTab ) goto exit_rename_column;

  /* Cannot alter a system table */
  if( SQLITE_OK!=FUNC1(pParse, pTab) ) goto exit_rename_column;
  if( SQLITE_OK!=FUNC2(pParse, pTab) ) goto exit_rename_column;

  /* Which schema holds the table to be altered */  
  iSchema = FUNC13(db, pTab->pSchema);
  FUNC0( iSchema>=0 );
  zDb = db->aDb[iSchema].zDbSName;

#ifndef SQLITE_OMIT_AUTHORIZATION
  /* Invoke the authorization callback. */
  if( FUNC5(pParse, SQLITE_ALTER_TABLE, zDb, pTab->zName, 0) ){
    goto exit_rename_column;
  }
#endif

  /* Make sure the old name really is a column name in the table to be
  ** altered.  Set iCol to be the index of the column being renamed */
  zOld = FUNC11(db, pOld);
  if( !zOld ) goto exit_rename_column;
  for(iCol=0; iCol<pTab->nCol; iCol++){
    if( 0==FUNC15(pTab->aCol[iCol].zName, zOld) ) break;
  }
  if( iCol==pTab->nCol ){
    FUNC7(pParse, "no such column: \"%s\"", zOld);
    goto exit_rename_column;
  }

  /* Do the rename operation using a recursive UPDATE statement that
  ** uses the sqlite_rename_column() SQL function to compute the new
  ** CREATE statement text for the sqlite_master table.
  */
  FUNC10(pParse);
  zNew = FUNC11(db, pNew);
  if( !zNew ) goto exit_rename_column;
  FUNC0( pNew->n>0 );
  bQuote = FUNC8(pNew->z[0]);
  FUNC12(pParse, 
      "UPDATE \"%w\".%s SET "
      "sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, %d) "
      "WHERE name NOT LIKE 'sqlite_%%' AND (type != 'index' OR tbl_name = %Q)"
      " AND sql NOT LIKE 'create virtual%%'",
      zDb, MASTER_NAME, 
      zDb, pTab->zName, iCol, zNew, bQuote, iSchema==1,
      pTab->zName
  );

  FUNC12(pParse, 
      "UPDATE temp.%s SET "
      "sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, 1) "
      "WHERE type IN ('trigger', 'view')",
      MASTER_NAME, 
      zDb, pTab->zName, iCol, zNew, bQuote
  );

  /* Drop and reload the database schema. */
  FUNC3(pParse, iSchema);
  FUNC4(pParse, zDb, iSchema==1);

 exit_rename_column:
  FUNC14(db, pSrc);
  FUNC6(db, zOld);
  FUNC6(db, zNew);
  return;
}