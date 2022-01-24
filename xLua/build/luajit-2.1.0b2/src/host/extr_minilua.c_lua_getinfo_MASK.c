#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ top; TYPE_3__* base_ci; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_14__ {scalar_t__ i_ci; } ;
typedef  TYPE_2__ lua_Debug ;
struct TYPE_15__ {scalar_t__ func; } ;
typedef  scalar_t__ StkId ;
typedef  int /*<<< orphan*/  Closure ;
typedef  TYPE_3__ CallInfo ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const*,TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(lua_State*L,const char*what,lua_Debug*ar){
int status;
Closure*f=NULL;
CallInfo*ci=NULL;
if(*what=='>'){
StkId func=L->top-1;
FUNC4(L,FUNC8(func));
what++;
f=FUNC1(func);
L->top--;
}
else if(ar->i_ci!=0){
ci=L->base_ci+ar->i_ci;
f=FUNC1(ci->func);
}
status=FUNC0(L,what,ar,f,ci);
if(FUNC7(what,'f')){
if(f==NULL)FUNC6(L->top);
else FUNC5(L,L->top,f);
FUNC3(L);
}
if(FUNC7(what,'L'))
FUNC2(L,f);
return status;
}