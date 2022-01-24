#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_2__ {int bRec; } ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char const*,int) ; 
 TYPE_1__ sqllogglobal ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(
  sqlite3 *db,                    /* Database connection */
  const char *zSearch,            /* Name to search for (or NULL) */
  char *zName,                    /* OUT: Name of attached database */
  char *zFile                     /* OUT: Name of attached file */
){
  sqlite3_stmt *pStmt;
  int rc;

  /* The "PRAGMA database_list" command returns a list of databases in the
  ** order that they were attached. So a newly attached database is 
  ** described by the last row returned.  */
  FUNC0( sqllogglobal.bRec==0 );
  sqllogglobal.bRec = 1;
  rc = FUNC6(db, "PRAGMA database_list", -1, &pStmt, 0);
  if( rc==SQLITE_OK ){
    while( SQLITE_ROW==FUNC7(pStmt) ){
      const char *zVal1; int nVal1;
      const char *zVal2; int nVal2;

      zVal1 = (const char*)FUNC3(pStmt, 1);
      nVal1 = FUNC2(pStmt, 1);
      if( zName ){
        FUNC1(zName, zVal1, nVal1+1);
      }

      zVal2 = (const char*)FUNC3(pStmt, 2);
      nVal2 = FUNC2(pStmt, 2);
      FUNC1(zFile, zVal2, nVal2+1);

      if( zSearch && FUNC9(zSearch)==nVal1 
       && 0==FUNC8(zSearch, zVal1, nVal1)
      ){
        break;
      }
    }
    rc = FUNC4(pStmt);
  }
  sqllogglobal.bRec = 0;

  if( rc!=SQLITE_OK ){
    FUNC5(rc, "sqllogFindAttached(): error in \"PRAGMA database_list\"");
  }
  return rc;
}