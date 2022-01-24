#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  TK_AND ; 
 int /*<<< orphan*/  TK_INTEGER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sqlite3IntTokens ; 

Expr *FUNC4(sqlite3 *db, Expr *pLeft, Expr *pRight){
  if( pLeft==0 ){
    return pRight;
  }else if( pRight==0 ){
    return pLeft;
  }else if( FUNC0(pLeft) || FUNC0(pRight) ){
    FUNC3(db, pLeft);
    FUNC3(db, pRight);
    return FUNC1(db, TK_INTEGER, &sqlite3IntTokens[0], 0);
  }else{
    Expr *pNew = FUNC1(db, TK_AND, 0, 0);
    FUNC2(db, pNew, pLeft, pRight);
    return pNew;
  }
}