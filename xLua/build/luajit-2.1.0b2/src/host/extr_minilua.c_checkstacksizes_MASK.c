#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size_ci; int stacksize; scalar_t__ stack; scalar_t__ base_ci; scalar_t__ ci; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ StkId ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(lua_State*L,StkId max){
int ci_used=FUNC0(L->ci-L->base_ci);
int s_used=FUNC0(max-L->stack);
if(L->size_ci>20000)
return;
if(4*ci_used<L->size_ci&&2*8<L->size_ci)
FUNC2(L,L->size_ci/2);
FUNC1(FUNC2(L,ci_used+1));
if(4*s_used<L->stacksize&&
2*((2*20)+5)<L->stacksize)
FUNC3(L,L->stacksize/2);
FUNC1(FUNC3(L,s_used));
}