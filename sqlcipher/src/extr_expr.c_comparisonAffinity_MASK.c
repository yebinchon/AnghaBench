#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* pSelect; } ;
struct TYPE_12__ {scalar_t__ op; int pLeft; TYPE_4__ x; scalar_t__ pRight; } ;
struct TYPE_10__ {TYPE_2__* pEList; } ;
struct TYPE_9__ {TYPE_1__* a; } ;
struct TYPE_8__ {scalar_t__ pExpr; } ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 char SQLITE_AFF_BLOB ; 
 scalar_t__ TK_EQ ; 
 scalar_t__ TK_GE ; 
 scalar_t__ TK_GT ; 
 scalar_t__ TK_IN ; 
 scalar_t__ TK_IS ; 
 scalar_t__ TK_ISNOT ; 
 scalar_t__ TK_LE ; 
 scalar_t__ TK_LT ; 
 scalar_t__ TK_NE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char FUNC2 (scalar_t__,char) ; 
 char FUNC3 (int) ; 

__attribute__((used)) static char FUNC4(Expr *pExpr){
  char aff;
  FUNC1( pExpr->op==TK_EQ || pExpr->op==TK_IN || pExpr->op==TK_LT ||
          pExpr->op==TK_GT || pExpr->op==TK_GE || pExpr->op==TK_LE ||
          pExpr->op==TK_NE || pExpr->op==TK_IS || pExpr->op==TK_ISNOT );
  FUNC1( pExpr->pLeft );
  aff = FUNC3(pExpr->pLeft);
  if( pExpr->pRight ){
    aff = FUNC2(pExpr->pRight, aff);
  }else if( FUNC0(pExpr, EP_xIsSelect) ){
    aff = FUNC2(pExpr->x.pSelect->pEList->a[0].pExpr, aff);
  }else if( aff==0 ){
    aff = SQLITE_AFF_BLOB;
  }
  return aff;
}