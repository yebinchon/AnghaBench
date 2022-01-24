#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  fulltext_statement ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC1(fulltext_vtab *v,
                                     fulltext_statement iStmt,
                                     sqlite3_stmt **ppStmt){
  int rc = FUNC0(v, iStmt, ppStmt);
  return (rc==SQLITE_DONE) ? SQLITE_OK : rc;
}