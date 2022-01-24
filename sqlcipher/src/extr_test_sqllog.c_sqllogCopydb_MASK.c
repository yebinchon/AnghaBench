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
struct SLConn {int /*<<< orphan*/  fd; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  sqlite3_backup ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_2__ {int bRec; int /*<<< orphan*/  iClock; int /*<<< orphan*/  zIdx; int /*<<< orphan*/  zPrefix; int /*<<< orphan*/  iNextDb; scalar_t__ bReuse; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLLOG_NAMESZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 char* FUNC12 (char*,...) ; 
 int FUNC13 (char*,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ ,char const*,char*,char*) ; 
 char* FUNC15 (char*) ; 
 TYPE_1__ sqllogglobal ; 

__attribute__((used)) static void FUNC16(struct SLConn *p, const char *zSearch, int bLog){
  char zName[SQLLOG_NAMESZ];      /* Attached database name */
  char zFile[SQLLOG_NAMESZ];      /* Database file name */
  char *zFree;
  char *zInit = 0;
  int rc;

  rc = FUNC14(p->db, zSearch, zName, zFile);
  if( rc!=SQLITE_OK ) return;

  if( zFile[0]=='\0' ){
    zInit = FUNC12("");
  }else{
    if( sqllogglobal.bReuse ){
      zInit = FUNC15(zFile);
    }else{
      zInit = 0;
    }
    if( zInit==0 ){
      int rc;
      sqlite3 *copy = 0;
      int iDb;

      /* Generate a file-name to use for the copy of this database */
      iDb = sqllogglobal.iNextDb++;
      zInit = FUNC12("%s_%02d.db", sqllogglobal.zPrefix, iDb);

      /* Create the backup */
      FUNC0( sqllogglobal.bRec==0 );
      sqllogglobal.bRec = 1;
      rc = FUNC13(zInit, &copy);
      if( rc==SQLITE_OK ){
        sqlite3_backup *pBak;
        FUNC9(copy, "PRAGMA synchronous = 0", 0, 0, 0);
        pBak = FUNC5(copy, "main", p->db, zName);
        if( pBak ){
          FUNC6(pBak, -1);
          rc = FUNC4(pBak);
        }else{
          rc = FUNC8(copy);
        }
        FUNC7(copy);
      }
      sqllogglobal.bRec = 0;

      if( rc==SQLITE_OK ){
        /* Write an entry into the database index file */
        FILE *fd = FUNC2(sqllogglobal.zIdx, "a");
        if( fd ){
          FUNC3(*fd, "%d %s\n", iDb, zFile);
          FUNC1(fd);
        }
      }else{
        FUNC11(rc, "sqllogCopydb(): error backing up database");
      }
    }
  }

  if( bLog ){
    zFree = FUNC12("ATTACH '%q' AS '%q'; -- clock=%d\n", 
        zInit, zName, sqllogglobal.iClock++
    );
  }else{
    zFree = FUNC12("-- Main database is '%q'\n", zInit);
  }
  FUNC3(p->fd, "%s", zFree);
  FUNC10(zFree);

  FUNC10(zInit);
}