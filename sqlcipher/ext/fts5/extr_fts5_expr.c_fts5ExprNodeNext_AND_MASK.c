#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_4__ {scalar_t__ bNomatch; int /*<<< orphan*/ * apChild; } ;
typedef  TYPE_1__ Fts5ExprNode ;
typedef  int /*<<< orphan*/  Fts5Expr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(
  Fts5Expr *pExpr, 
  Fts5ExprNode *pNode,
  int bFromValid,
  i64 iFrom
){
  int rc = FUNC0(pExpr, pNode->apChild[0], bFromValid, iFrom);
  if( rc==SQLITE_OK ){
    rc = FUNC1(pExpr, pNode);
  }else{
    pNode->bNomatch = 0;
  }
  return rc;
}