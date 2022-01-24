#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_5__ {scalar_t__ nData; } ;
struct TYPE_4__ {TYPE_3__ result; int /*<<< orphan*/  reader; int /*<<< orphan*/  snippet; int /*<<< orphan*/  q; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_1__ fulltext_cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(sqlite3_vtab_cursor *pCursor){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  FUNC0(("FTS2 Close %p\n", c));
  FUNC5(c->pStmt);
  FUNC3(&c->q);
  FUNC4(&c->snippet);
  if( c->result.nData!=0 ) FUNC2(&c->reader);
  FUNC1(&c->result);
  FUNC6(c);
  return SQLITE_OK;
}