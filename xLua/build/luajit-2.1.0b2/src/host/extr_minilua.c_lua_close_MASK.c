#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ baseCcalls; scalar_t__ nCcalls; TYPE_1__* ci; int /*<<< orphan*/  top; int /*<<< orphan*/  base; TYPE_1__* base_ci; scalar_t__ errfunc; int /*<<< orphan*/  stack; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_12__ {TYPE_2__* mainthread; } ;
struct TYPE_10__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  callallgcTM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(lua_State*L){
L=FUNC0(L)->mainthread;
FUNC4(L,L->stack);
FUNC2(L,1);
L->errfunc=0;
do{
L->ci=L->base_ci;
L->base=L->top=L->ci->base;
L->nCcalls=L->baseCcalls=0;
}while(FUNC3(L,callallgcTM,NULL)!=0);
FUNC1(L);
}