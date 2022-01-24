#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_6__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(fulltext_vtab *v, sqlite3_value *pRequestRowid,
                        sqlite3_value **pValues, sqlite_int64 *piRowid){
  int rc;

  rc = FUNC0(v, pRequestRowid, pValues);  /* execute an SQL INSERT */
  if( rc!=SQLITE_OK ) return rc;

  *piRowid = FUNC3(v->db);
  rc = FUNC1(v, *piRowid);
  if( rc!=SQLITE_OK ) return rc;

  return FUNC2(v, *piRowid, pValues);
}