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
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_8__ {int iColumn; } ;
struct TYPE_7__ {int /*<<< orphan*/  pReprepare; int /*<<< orphan*/  pVdbe; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_AFF_BLOB ; 
 scalar_t__ SQLITE_TEXT ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(Parse *pParse, Expr *pVar, Expr *pExpr){
  int res = 0;
  int iVar;
  sqlite3_value *pL, *pR = 0;
  
  FUNC2(pParse->db, pExpr, SQLITE_UTF8, SQLITE_AFF_BLOB, &pR);
  if( pR ){
    iVar = pVar->iColumn;
    FUNC4(pParse->pVdbe, iVar);
    pL = FUNC3(pParse->pReprepare, iVar, SQLITE_AFF_BLOB);
    if( pL ){
      if( FUNC6(pL)==SQLITE_TEXT ){
        FUNC5(pL); /* Make sure the encoding is UTF-8 */
      }
      res =  0==FUNC0(pL, pR, 0);
    }
    FUNC1(pR);
    FUNC1(pL);
  }

  return res;
}