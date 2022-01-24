#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_9__ {int /*<<< orphan*/  n; int /*<<< orphan*/  p; } ;
struct TYPE_8__ {TYPE_1__* pConfig; } ;
struct TYPE_7__ {scalar_t__ bColumnsize; } ;
typedef  TYPE_2__ Fts5Storage ;
typedef  TYPE_3__ Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_STMT_REPLACE_DOCSIZE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
  Fts5Storage *p,                 /* Storage module to write to */
  i64 iRowid,                     /* id value */
  Fts5Buffer *pBuf                /* sz value */
){
  int rc = SQLITE_OK;
  if( p->pConfig->bColumnsize ){
    sqlite3_stmt *pReplace = 0;
    rc = FUNC0(p, FTS5_STMT_REPLACE_DOCSIZE, &pReplace, 0);
    if( rc==SQLITE_OK ){
      FUNC2(pReplace, 1, iRowid);
      FUNC1(pReplace, 2, pBuf->p, pBuf->n, SQLITE_STATIC);
      FUNC5(pReplace);
      rc = FUNC4(pReplace);
      FUNC3(pReplace, 2);
    }
  }
  return rc;
}