#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ ci; scalar_t__ base_ci; scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_15__ {int /*<<< orphan*/  env; } ;
struct TYPE_17__ {TYPE_1__ c; } ;
typedef  int /*<<< orphan*/  StkId ;
typedef  TYPE_3__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(lua_State*L,int idx){
StkId o;
if(idx==(-10001)&&L->ci==L->base_ci)
FUNC6(L,"no calling environment");
FUNC0(L,1);
o=FUNC4(L,idx);
FUNC1(L,o);
if(idx==(-10001)){
Closure*func=FUNC2(L);
FUNC7(L,FUNC9(L->top-1));
func->c.env=FUNC3(L->top-1);
FUNC5(L,func,L->top-1);
}
else{
FUNC8(L,o,L->top-1);
if(idx<(-10002))
FUNC5(L,FUNC2(L),L->top-1);
}
L->top--;
}