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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {int /*<<< orphan*/ ** aStmt; } ;
typedef  TYPE_1__ Fts5Storage ;

/* Variables and functions */
 int FTS5_STMT_LOOKUP ; 
 int FTS5_STMT_SCAN_ASC ; 
 int FTS5_STMT_SCAN_DESC ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ **,char**) ; 

int FUNC2(
  Fts5Storage *p, 
  int eStmt, 
  sqlite3_stmt **pp, 
  char **pzErrMsg
){
  int rc;
  FUNC0( eStmt==FTS5_STMT_SCAN_ASC 
       || eStmt==FTS5_STMT_SCAN_DESC
       || eStmt==FTS5_STMT_LOOKUP
  );
  rc = FUNC1(p, eStmt, pp, pzErrMsg);
  if( rc==SQLITE_OK ){
    FUNC0( p->aStmt[eStmt]==*pp );
    p->aStmt[eStmt] = 0;
  }
  return rc;
}