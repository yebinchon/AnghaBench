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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {TYPE_1__* pConfig; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; scalar_t__ bColumnsize; } ;
typedef  TYPE_2__ Fts5Storage ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_STMT_REPLACE_DOCSIZE ; 
 int SQLITE_MISMATCH ; 
 int SQLITE_OK ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(Fts5Storage *p, i64 *piRowid){
  int rc = SQLITE_MISMATCH;
  if( p->pConfig->bColumnsize ){
    sqlite3_stmt *pReplace = 0;
    rc = FUNC0(p, FTS5_STMT_REPLACE_DOCSIZE, &pReplace, 0);
    if( rc==SQLITE_OK ){
      FUNC1(pReplace, 1);
      FUNC1(pReplace, 2);
      FUNC4(pReplace);
      rc = FUNC3(pReplace);
    }
    if( rc==SQLITE_OK ){
      *piRowid = FUNC2(p->pConfig->db);
    }
  }
  return rc;
}