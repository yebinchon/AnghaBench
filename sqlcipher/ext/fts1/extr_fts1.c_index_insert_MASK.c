#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  int /*<<< orphan*/  fts1Hash ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(fulltext_vtab *v, sqlite3_value *pRequestRowid,
                        sqlite3_value **pValues,
                        sqlite_int64 *piRowid, fts1Hash *pTerms){
  int rc;

  rc = FUNC0(v, pRequestRowid, pValues);  /* execute an SQL INSERT */
  if( rc!=SQLITE_OK ) return rc;
  *piRowid = FUNC2(v->db);
  return FUNC1(v, pTerms, *piRowid, pValues);
}