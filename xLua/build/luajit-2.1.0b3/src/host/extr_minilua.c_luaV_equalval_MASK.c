#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  metatable; } ;
struct TYPE_8__ {int /*<<< orphan*/  metatable; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  TM_EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC11(lua_State*L,const TValue*t1,const TValue*t2){
const TValue*tm;
switch(FUNC9(t1)){
case 0:return 1;
case 3:return FUNC6(FUNC7(t1),FUNC7(t2));
case 1:return FUNC0(t1)==FUNC0(t2);
case 2:return FUNC8(t1)==FUNC8(t2);
case 7:{
if(FUNC10(t1)==FUNC10(t2))return 1;
tm=FUNC3(L,FUNC10(t1)->metatable,FUNC10(t2)->metatable,
TM_EQ);
break;
}
case 5:{
if(FUNC4(t1)==FUNC4(t2))return 1;
tm=FUNC3(L,FUNC4(t1)->metatable,FUNC4(t2)->metatable,TM_EQ);
break;
}
default:return FUNC2(t1)==FUNC2(t2);
}
if(tm==NULL)return 0;
FUNC1(L,L->top,tm,t1,t2);
return!FUNC5(L->top);
}