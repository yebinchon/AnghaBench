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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {char* zDb; int /*<<< orphan*/  zTab; } ;
typedef  TYPE_1__ UnionSrc ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
  sqlite3 *db,                    /* Database handle */
  UnionSrc *pSrc,                 /* Source table to test */
  char **pzErr                    /* OUT: Error message */
){
  int bPk = 0;
  const char *zType = 0;
  int rc;

  FUNC3(
      db, pSrc->zDb, pSrc->zTab, "_rowid_", &zType, 0, 0, &bPk, 0
  );
  rc = FUNC0(db);
  if( rc==SQLITE_ERROR 
   || (rc==SQLITE_OK && (!bPk || FUNC2("integer", zType)))
  ){
    rc = SQLITE_ERROR;
    *pzErr = FUNC1("no such rowid table: %s%s%s",
        (pSrc->zDb ? pSrc->zDb : ""),
        (pSrc->zDb ? "." : ""),
        pSrc->zTab
    );
  }
  return rc;
}