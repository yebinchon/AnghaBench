#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int rc; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_6__ {int /*<<< orphan*/  zIdx; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC6(sqlite3rbu *p, RbuObjIter *pIter){
  sqlite3_stmt *pStmt = 0;
  int rc = p->rc;
  char *zRet = 0;

  if( rc==SQLITE_OK ){
    rc = FUNC0(p->dbMain, &pStmt, &p->zErrmsg,
        "SELECT trim(sql) FROM sqlite_master WHERE type='index' AND name=?"
    );
  }
  if( rc==SQLITE_OK ){
    int rc2;
    rc = FUNC2(pStmt, 1, pIter->zIdx, -1, SQLITE_STATIC);
    if( rc==SQLITE_OK && SQLITE_ROW==FUNC5(pStmt) ){
      const char *zSql = (const char*)FUNC3(pStmt, 0);
      if( zSql ){
        int nParen = 0;           /* Number of open parenthesis */
        int i;
        for(i=0; zSql[i]; i++){
          char c = zSql[i];
          if( c=='(' ){
            nParen++;
          }
          else if( c==')' ){
            nParen--;
            if( nParen==0 ){
              i++;
              break;
            }
          }else if( c=='"' || c=='\'' || c=='`' ){
            for(i++; 1; i++){
              if( zSql[i]==c ){
                if( zSql[i+1]!=c ) break;
                i++;
              }
            }
          }else if( c=='[' ){
            for(i++; 1; i++){
              if( zSql[i]==']' ) break;
            }
          }
        }
        if( zSql[i] ){
          zRet = FUNC1(&zSql[i], &rc);
        }
      }
    }

    rc2 = FUNC4(pStmt);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  p->rc = rc;
  return zRet;
}