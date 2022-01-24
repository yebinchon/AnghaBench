#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ op; struct TYPE_8__* pLeft; struct TYPE_8__* pRight; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_1__ Expr ;

/* Variables and functions */
 scalar_t__ TK_IS ; 
 scalar_t__ TK_ISNULL ; 
 scalar_t__ TK_NOTNULL ; 
 scalar_t__ TK_OR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(Parse *pParse, Expr *pE1, Expr *pE2, int iTab){
  if( FUNC0(pParse, pE1, pE2, iTab)==0 ){
    return 1;
  }
  if( pE2->op==TK_OR
   && (FUNC3(pParse, pE1, pE2->pLeft, iTab)
             || FUNC3(pParse, pE1, pE2->pRight, iTab) )
  ){
    return 1;
  }
  if( pE2->op==TK_NOTNULL && pE1->op!=TK_ISNULL && pE1->op!=TK_IS ){
    Expr *pX = FUNC1(pE1->pLeft);
    FUNC2( pX!=pE1->pLeft );
    if( FUNC0(pParse, pX, pE2->pLeft, iTab)==0 ) return 1;
  }
  return 0;
}