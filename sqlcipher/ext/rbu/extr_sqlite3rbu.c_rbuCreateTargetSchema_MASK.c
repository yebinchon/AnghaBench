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
struct TYPE_5__ {int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; void* rc; int /*<<< orphan*/  dbRbu; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;

/* Variables and functions */
 void* SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(sqlite3rbu *p){
  sqlite3_stmt *pSql = 0;
  sqlite3_stmt *pInsert = 0;

  FUNC0( FUNC3(p) );
  p->rc = FUNC7(p->dbMain, "PRAGMA writable_schema=1", 0,0, &p->zErrmsg);
  if( p->rc==SQLITE_OK ){
    p->rc = FUNC1(p->dbRbu, &pSql, &p->zErrmsg, 
      "SELECT sql FROM sqlite_master WHERE sql!='' AND rootpage!=0"
      " AND name!='sqlite_sequence' "
      " ORDER BY type DESC"
    );
  }

  while( p->rc==SQLITE_OK && FUNC9(pSql)==SQLITE_ROW ){
    const char *zSql = (const char*)FUNC5(pSql, 0);
    p->rc = FUNC7(p->dbMain, zSql, 0, 0, &p->zErrmsg);
  }
  FUNC2(p, pSql);
  if( p->rc!=SQLITE_OK ) return;

  if( p->rc==SQLITE_OK ){
    p->rc = FUNC1(p->dbRbu, &pSql, &p->zErrmsg, 
        "SELECT * FROM sqlite_master WHERE rootpage=0 OR rootpage IS NULL" 
    );
  }

  if( p->rc==SQLITE_OK ){
    p->rc = FUNC1(p->dbMain, &pInsert, &p->zErrmsg, 
        "INSERT INTO sqlite_master VALUES(?,?,?,?,?)"
    );
  }

  while( p->rc==SQLITE_OK && FUNC9(pSql)==SQLITE_ROW ){
    int i;
    for(i=0; i<5; i++){
      FUNC4(pInsert, i+1, FUNC6(pSql, i));
    }
    FUNC9(pInsert);
    p->rc = FUNC8(pInsert);
  }
  if( p->rc==SQLITE_OK ){
    p->rc = FUNC7(p->dbMain, "PRAGMA writable_schema=0",0,0,&p->zErrmsg);
  }

  FUNC2(p, pSql);
  FUNC2(p, pInsert);
}