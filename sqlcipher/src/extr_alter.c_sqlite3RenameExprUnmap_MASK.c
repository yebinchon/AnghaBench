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
struct TYPE_4__ {int /*<<< orphan*/  xExprCallback; int /*<<< orphan*/ * pParse; } ;
typedef  TYPE_1__ Walker ;
typedef  int /*<<< orphan*/  Parse ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  renameUnmapExprCb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC2(Parse *pParse, Expr *pExpr){
  Walker sWalker;
  FUNC0(&sWalker, 0, sizeof(Walker));
  sWalker.pParse = pParse;
  sWalker.xExprCallback = renameUnmapExprCb;
  FUNC1(&sWalker, pExpr);
}