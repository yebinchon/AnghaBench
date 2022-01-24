#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_4__ {int /*<<< orphan*/  pExpr; } ;
typedef  int /*<<< orphan*/  NameContext ;
typedef  TYPE_2__ ExprList ;

/* Variables and functions */
 int WRC_Abort ; 
 int WRC_Continue ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1( 
  NameContext *pNC,       /* Namespace to resolve expressions in. */
  ExprList *pList         /* The expression list to be analyzed. */
){
  int i;
  if( pList ){
    for(i=0; i<pList->nExpr; i++){
      if( FUNC0(pNC, pList->a[i].pExpr) ) return WRC_Abort;
    }
  }
  return WRC_Continue;
}