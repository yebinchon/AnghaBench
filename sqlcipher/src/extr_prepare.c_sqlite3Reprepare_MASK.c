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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(Vdbe *p){
  int rc;
  sqlite3_stmt *pNew;
  const char *zSql;
  sqlite3 *db;
  u8 prepFlags;

  FUNC0( FUNC9(FUNC4(p)->mutex) );
  zSql = FUNC10((sqlite3_stmt *)p);
  FUNC0( zSql!=0 );  /* Reprepare only called for prepare_v2() statements */
  db = FUNC4(p);
  FUNC0( FUNC9(db->mutex) );
  prepFlags = FUNC6(p);
  rc = FUNC1(db, zSql, -1, prepFlags, p, &pNew, 0);
  if( rc ){
    if( rc==SQLITE_NOMEM ){
      FUNC2(db);
    }
    FUNC0( pNew==0 );
    return rc;
  }else{
    FUNC0( pNew!=0 );
  }
  FUNC8((Vdbe*)pNew, p);
  FUNC3(pNew, (sqlite3_stmt*)p);
  FUNC7((Vdbe*)pNew);
  FUNC5((Vdbe*)pNew);
  return SQLITE_OK;
}