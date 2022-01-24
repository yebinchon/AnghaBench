#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_6__ {int iVersion; int (* xFetch ) (TYPE_2__*,int,int,void**) ;int (* xUnfetch ) (TYPE_2__*,int,void*) ;} ;
typedef  TYPE_1__ sqlite3_io_methods ;
typedef  int sqlite3_int64 ;
struct TYPE_7__ {TYPE_1__* pMethods; } ;
typedef  TYPE_2__ sqlite3_file ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_FCNTL_FILE_POINTER ; 
 int SQLITE_MISUSE ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*,char const*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_2__*,int,int,void**) ; 
 int FUNC12 (TYPE_2__*,int,void*) ; 

int FUNC13(sqlite3 *db, const char *zDb){
  int rc = SQLITE_OK;
  char *zSql = 0;
  int pgsz = 0;
  int nTotal = 0;

  if( 0==FUNC6(db) ) return SQLITE_MISUSE;

  /* Open a read-only transaction on the file in question */
  zSql = FUNC8("BEGIN; SELECT * FROM %s%q%ssqlite_master", 
      (zDb ? "'" : ""), (zDb ? zDb : ""), (zDb ? "'." : "")
  );
  if( zSql==0 ) return SQLITE_NOMEM;
  rc = FUNC2(db, zSql, 0, 0, 0);
  FUNC5(zSql);

  /* Find the SQLite page size of the file */
  if( rc==SQLITE_OK ){
    zSql = FUNC8("PRAGMA %s%q%spage_size", 
        (zDb ? "'" : ""), (zDb ? zDb : ""), (zDb ? "'." : "")
    );
    if( zSql==0 ){
      rc = SQLITE_NOMEM;
    }else{
      sqlite3_stmt *pPgsz = 0;
      rc = FUNC9(db, zSql, -1, &pPgsz, 0);
      FUNC5(zSql);
      if( rc==SQLITE_OK ){
        if( FUNC10(pPgsz)==SQLITE_ROW ){
          pgsz = FUNC0(pPgsz, 0);
        }
        rc = FUNC4(pPgsz);
      }
      if( rc==SQLITE_OK && pgsz==0 ){
        rc = SQLITE_ERROR;
      }
    }
  }

  /* Touch each mmap'd page of the file */
  if( rc==SQLITE_OK ){
    int rc2;
    sqlite3_file *pFd = 0;
    rc = FUNC3(db, zDb, SQLITE_FCNTL_FILE_POINTER, &pFd);
    if( rc==SQLITE_OK && pFd->pMethods->iVersion>=3 ){
      sqlite3_int64 iPg = 1;
      sqlite3_io_methods const *p = pFd->pMethods;
      while( 1 ){
        unsigned char *pMap;
        rc = p->xFetch(pFd, pgsz*iPg, pgsz, (void**)&pMap);
        if( rc!=SQLITE_OK || pMap==0 ) break;

        nTotal += pMap[0];
        nTotal += pMap[pgsz-1];

        rc = p->xUnfetch(pFd, pgsz*iPg, (void*)pMap);
        if( rc!=SQLITE_OK ) break;
        iPg++;
      }
      FUNC7(SQLITE_OK, 
          "sqlite3_mmap_warm_cache: Warmed up %d pages of %s", iPg==1?0:iPg,
          FUNC1(db, zDb)
      );
    }

    rc2 = FUNC2(db, "END", 0, 0, 0);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  return rc;
}