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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_6__ {TYPE_1__* pConfig; int /*<<< orphan*/  pIndex; } ;
struct TYPE_5__ {int iCookie; } ;
typedef  TYPE_2__ Fts5Storage ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_STMT_REPLACE_CONFIG ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
  Fts5Storage *p, 
  const char *z,
  sqlite3_value *pVal,
  int iVal
){
  sqlite3_stmt *pReplace = 0;
  int rc = FUNC0(p, FTS5_STMT_REPLACE_CONFIG, &pReplace, 0);
  if( rc==SQLITE_OK ){
    FUNC4(pReplace, 1, z, -1, SQLITE_STATIC);
    if( pVal ){
      FUNC5(pReplace, 2, pVal);
    }else{
      FUNC2(pReplace, 2, iVal);
    }
    FUNC7(pReplace);
    rc = FUNC6(pReplace);
    FUNC3(pReplace, 1);
  }
  if( rc==SQLITE_OK && pVal ){
    int iNew = p->pConfig->iCookie + 1;
    rc = FUNC1(p->pIndex, iNew);
    if( rc==SQLITE_OK ){
      p->pConfig->iCookie = iNew;
    }
  }
  return rc;
}