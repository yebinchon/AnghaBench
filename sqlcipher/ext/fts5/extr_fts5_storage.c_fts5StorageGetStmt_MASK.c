#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {int nCol; int /*<<< orphan*/  db; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  zContentRowid; int /*<<< orphan*/  zContent; int /*<<< orphan*/  zContentExprlist; scalar_t__ bColumnsize; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** aStmt; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int FTS5_STMT_DELETE_DOCSIZE ; 
#define  FTS5_STMT_INSERT_CONTENT 133 
#define  FTS5_STMT_LOOKUP 132 
 int FTS5_STMT_LOOKUP_DOCSIZE ; 
#define  FTS5_STMT_REPLACE_CONTENT 131 
 int FTS5_STMT_REPLACE_DOCSIZE ; 
#define  FTS5_STMT_SCAN 130 
#define  FTS5_STMT_SCAN_ASC 129 
#define  FTS5_STMT_SCAN_DESC 128 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_PREPARE_NO_VTAB ; 
 int SQLITE_PREPARE_PERSISTENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
  Fts5Storage *p,                 /* Storage handle */
  int eStmt,                      /* FTS5_STMT_XXX constant */
  sqlite3_stmt **ppStmt,          /* OUT: Prepared statement handle */
  char **pzErrMsg                 /* OUT: Error message (if any) */
){
  int rc = SQLITE_OK;

  /* If there is no %_docsize table, there should be no requests for 
  ** statements to operate on it.  */
  FUNC1( p->pConfig->bColumnsize || (
        eStmt!=FTS5_STMT_REPLACE_DOCSIZE 
     && eStmt!=FTS5_STMT_DELETE_DOCSIZE 
     && eStmt!=FTS5_STMT_LOOKUP_DOCSIZE 
  ));

  FUNC1( eStmt>=0 && eStmt<FUNC0(p->aStmt) );
  if( p->aStmt[eStmt]==0 ){
    const char *azStmt[] = {
      "SELECT %s FROM %s T WHERE T.%Q >= ? AND T.%Q <= ? ORDER BY T.%Q ASC",
      "SELECT %s FROM %s T WHERE T.%Q <= ? AND T.%Q >= ? ORDER BY T.%Q DESC",
      "SELECT %s FROM %s T WHERE T.%Q=?",               /* LOOKUP  */

      "INSERT INTO %Q.'%q_content' VALUES(%s)",         /* INSERT_CONTENT  */
      "REPLACE INTO %Q.'%q_content' VALUES(%s)",        /* REPLACE_CONTENT */
      "DELETE FROM %Q.'%q_content' WHERE id=?",         /* DELETE_CONTENT  */
      "REPLACE INTO %Q.'%q_docsize' VALUES(?,?)",       /* REPLACE_DOCSIZE  */
      "DELETE FROM %Q.'%q_docsize' WHERE id=?",         /* DELETE_DOCSIZE  */

      "SELECT sz FROM %Q.'%q_docsize' WHERE id=?",      /* LOOKUP_DOCSIZE  */

      "REPLACE INTO %Q.'%q_config' VALUES(?,?)",        /* REPLACE_CONFIG */
      "SELECT %s FROM %s AS T",                         /* SCAN */
    };
    Fts5Config *pC = p->pConfig;
    char *zSql = 0;

    switch( eStmt ){
      case FTS5_STMT_SCAN:
        zSql = FUNC5(azStmt[eStmt], 
            pC->zContentExprlist, pC->zContent
        );
        break;

      case FTS5_STMT_SCAN_ASC:
      case FTS5_STMT_SCAN_DESC:
        zSql = FUNC5(azStmt[eStmt], pC->zContentExprlist, 
            pC->zContent, pC->zContentRowid, pC->zContentRowid,
            pC->zContentRowid
        );
        break;

      case FTS5_STMT_LOOKUP:
        zSql = FUNC5(azStmt[eStmt], 
            pC->zContentExprlist, pC->zContent, pC->zContentRowid
        );
        break;

      case FTS5_STMT_INSERT_CONTENT: 
      case FTS5_STMT_REPLACE_CONTENT: {
        int nCol = pC->nCol + 1;
        char *zBind;
        int i;

        zBind = FUNC4(1 + nCol*2);
        if( zBind ){
          for(i=0; i<nCol; i++){
            zBind[i*2] = '?';
            zBind[i*2 + 1] = ',';
          }
          zBind[i*2-1] = '\0';
          zSql = FUNC5(azStmt[eStmt], pC->zDb, pC->zName, zBind);
          FUNC3(zBind);
        }
        break;
      }

      default:
        zSql = FUNC5(azStmt[eStmt], pC->zDb, pC->zName);
        break;
    }

    if( zSql==0 ){
      rc = SQLITE_NOMEM;
    }else{
      int f = SQLITE_PREPARE_PERSISTENT;
      if( eStmt>FTS5_STMT_LOOKUP ) f |= SQLITE_PREPARE_NO_VTAB;
      rc = FUNC6(pC->db, zSql, -1, f, &p->aStmt[eStmt], 0);
      FUNC3(zSql);
      if( rc!=SQLITE_OK && pzErrMsg ){
        *pzErrMsg = FUNC5("%s", FUNC2(pC->db));
      }
    }
  }

  *ppStmt = p->aStmt[eStmt];
  FUNC7(*ppStmt);
  return rc;
}