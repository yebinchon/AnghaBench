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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_3__ {int mxSavepoint; int /*<<< orphan*/  inTransaction; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab *pVtab, int iSavepoint){
  Fts3Table *p = (Fts3Table*)pVtab;
  FUNC1(iSavepoint);
  FUNC2( p->inTransaction );
  FUNC0( p->mxSavepoint = iSavepoint );
  FUNC3(p);
  return SQLITE_OK;
}