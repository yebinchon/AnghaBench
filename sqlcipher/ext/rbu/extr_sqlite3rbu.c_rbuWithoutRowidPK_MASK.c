#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ rc; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_8__ {scalar_t__ zIdx; char const* zTbl; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_1__*,char*,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static char *FUNC9(sqlite3rbu *p, RbuObjIter *pIter){
  char *z = 0;
  FUNC0( pIter->zIdx==0 );
  if( p->rc==SQLITE_OK ){
    const char *zSep = "PRIMARY KEY(";
    sqlite3_stmt *pXList = 0;     /* PRAGMA index_list = (pIter->zTbl) */
    sqlite3_stmt *pXInfo = 0;     /* PRAGMA index_xinfo = <pk-index> */
   
    p->rc = FUNC1(p->dbMain, &pXList, &p->zErrmsg,
        FUNC6("PRAGMA main.index_list = %Q", pIter->zTbl)
    );
    while( p->rc==SQLITE_OK && SQLITE_ROW==FUNC7(pXList) ){
      const char *zOrig = (const char*)FUNC5(pXList,3);
      if( zOrig && FUNC8(zOrig, "pk")==0 ){
        const char *zIdx = (const char*)FUNC5(pXList,1);
        if( zIdx ){
          p->rc = FUNC1(p->dbMain, &pXInfo, &p->zErrmsg,
              FUNC6("PRAGMA main.index_xinfo = %Q", zIdx)
          );
        }
        break;
      }
    }
    FUNC2(p, pXList);

    while( p->rc==SQLITE_OK && SQLITE_ROW==FUNC7(pXInfo) ){
      if( FUNC4(pXInfo, 5) ){
        /* int iCid = sqlite3_column_int(pXInfo, 0); */
        const char *zCol = (const char*)FUNC5(pXInfo, 2);
        const char *zDesc = FUNC4(pXInfo, 3) ? " DESC" : "";
        z = FUNC3(p, "%z%s\"%w\"%s", z, zSep, zCol, zDesc);
        zSep = ", ";
      }
    }
    z = FUNC3(p, "%z)", z);
    FUNC2(p, pXInfo);
  }
  return z;
}