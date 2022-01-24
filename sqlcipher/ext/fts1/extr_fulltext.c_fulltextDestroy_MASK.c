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
struct TYPE_3__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVTab){
  fulltext_vtab *v = (fulltext_vtab *)pVTab;

  int rc = FUNC1(v->db, v->zName,
                    "drop table %_content; drop table %_term");
  if( rc!=SQLITE_OK ) return rc;

  FUNC0((fulltext_vtab *)pVTab);
  return SQLITE_OK;
}