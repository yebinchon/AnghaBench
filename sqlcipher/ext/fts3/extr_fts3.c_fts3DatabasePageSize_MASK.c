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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {int nPgsz; int /*<<< orphan*/  db; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_AUTH ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(int *pRc, Fts3Table *p){
  if( *pRc==SQLITE_OK ){
    int rc;                       /* Return code */
    char *zSql;                   /* SQL text "PRAGMA %Q.page_size" */
    sqlite3_stmt *pStmt;          /* Compiled "PRAGMA %Q.page_size" statement */
  
    zSql = FUNC4("PRAGMA %Q.page_size", p->zDb);
    if( !zSql ){
      rc = SQLITE_NOMEM;
    }else{
      rc = FUNC5(p->db, zSql, -1, &pStmt, 0);
      if( rc==SQLITE_OK ){
        FUNC6(pStmt);
        p->nPgsz = FUNC1(pStmt, 0);
        rc = FUNC2(pStmt);
      }else if( rc==SQLITE_AUTH ){
        p->nPgsz = 1024;
        rc = SQLITE_OK;
      }
    }
    FUNC0( p->nPgsz>0 || rc!=SQLITE_OK );
    FUNC3(zSql);
    *pRc = rc;
  }
}