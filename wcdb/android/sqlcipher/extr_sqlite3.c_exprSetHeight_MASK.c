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
struct TYPE_5__ {scalar_t__ pList; int /*<<< orphan*/  pSelect; } ;
struct TYPE_6__ {int flags; int nHeight; TYPE_1__ x; int /*<<< orphan*/  pRight; int /*<<< orphan*/  pLeft; } ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int EP_Propagate ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(Expr *p){
  int nHeight = 0;
  FUNC1(p->pLeft, &nHeight);
  FUNC1(p->pRight, &nHeight);
  if( FUNC0(p, EP_xIsSelect) ){
    FUNC3(p->x.pSelect, &nHeight);
  }else if( p->x.pList ){
    FUNC2(p->x.pList, &nHeight);
    p->flags |= EP_Propagate & FUNC4(p->x.pList);
  }
  p->nHeight = nHeight + 1;
}