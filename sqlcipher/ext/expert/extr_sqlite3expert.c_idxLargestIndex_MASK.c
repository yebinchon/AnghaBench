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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char**,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sqlite3 *db, int *pnMax, char **pzErr){
  int rc = SQLITE_OK;
  const char *zMax = 
    "SELECT max(i.seqno) FROM "
    "  sqlite_master AS s, "
    "  pragma_index_list(s.name) AS l, "
    "  pragma_index_info(l.name) AS i "
    "WHERE s.type = 'table'";
  sqlite3_stmt *pMax = 0;

  *pnMax = 0;
  rc = FUNC1(db, &pMax, pzErr, zMax);
  if( rc==SQLITE_OK && SQLITE_ROW==FUNC3(pMax) ){
    *pnMax = FUNC2(pMax, 0) + 1;
  }
  FUNC0(&rc, pMax);

  return rc;
}