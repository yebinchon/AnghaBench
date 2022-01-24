#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ stmt_vtab ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  stmt_vtab *pNew;
  int rc;

/* Column numbers */
#define STMT_COLUMN_SQL     0   /* SQL for the statement */
#define STMT_COLUMN_NCOL    1   /* Number of result columns */
#define STMT_COLUMN_RO      2   /* True if read-only */
#define STMT_COLUMN_BUSY    3   /* True if currently busy */
#define STMT_COLUMN_NSCAN   4   /* SQLITE_STMTSTATUS_FULLSCAN_STEP */
#define STMT_COLUMN_NSORT   5   /* SQLITE_STMTSTATUS_SORT */
#define STMT_COLUMN_NAIDX   6   /* SQLITE_STMTSTATUS_AUTOINDEX */
#define STMT_COLUMN_NSTEP   7   /* SQLITE_STMTSTATUS_VM_STEP */
#define STMT_COLUMN_REPREP  8   /* SQLITE_STMTSTATUS_REPREPARE */
#define STMT_COLUMN_RUN     9   /* SQLITE_STMTSTATUS_RUN */
#define STMT_COLUMN_MEM    10   /* SQLITE_STMTSTATUS_MEMUSED */


  rc = FUNC1(db,
     "CREATE TABLE x(sql,ncol,ro,busy,nscan,nsort,naidx,nstep,"
                    "reprep,run,mem)");
  if( rc==SQLITE_OK ){
    pNew = FUNC2( sizeof(*pNew) );
    *ppVtab = (sqlite3_vtab*)pNew;
    if( pNew==0 ) return SQLITE_NOMEM;
    FUNC0(pNew, 0, sizeof(*pNew));
    pNew->db = db;
  }
  return rc;
}