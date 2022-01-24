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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_INSERT_STMT ; 
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(fulltext_vtab *v, const char *pData, int nData,
                        sqlite_int64 *piBlockid){
  sqlite3_stmt *s;
  int rc = FUNC0(v, BLOCK_INSERT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC1(s, 1, pData, nData, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC3(s);
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  if( rc!=SQLITE_DONE ) return rc;

  *piBlockid = FUNC2(v->db);
  return SQLITE_OK;
}