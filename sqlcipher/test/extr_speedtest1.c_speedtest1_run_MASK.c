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
struct TYPE_2__ {int nResult; char* zResult; int /*<<< orphan*/ * pStmt; int /*<<< orphan*/  db; scalar_t__ bReprepare; scalar_t__ bSqlOnly; } ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*) ; 

void FUNC11(void){
  int i, n, len;
  if( g.bSqlOnly ) return;
  FUNC0( g.pStmt );
  g.nResult = 0;
  while( FUNC9(g.pStmt)==SQLITE_ROW ){
    n = FUNC3(g.pStmt);
    for(i=0; i<n; i++){
      const char *z = (const char*)FUNC4(g.pStmt, i);
      if( z==0 ) z = "nil";
      len = (int)FUNC10(z);
      if( g.nResult+len<sizeof(g.zResult)-2 ){
        if( g.nResult>0 ) g.zResult[g.nResult++] = ' ';
        FUNC1(g.zResult + g.nResult, z, len+1);
        g.nResult += len;
      }
    }
  }
#if SQLITE_VERSION_NUMBER>=3006001
  if( g.bReprepare ){
    sqlite3_stmt *pNew;
    sqlite3_prepare_v2(g.db, sqlite3_sql(g.pStmt), -1, &pNew, 0);
    sqlite3_finalize(g.pStmt);
    g.pStmt = pNew;
  }else
#endif
  {
    FUNC7(g.pStmt);
  }
  FUNC2();
}