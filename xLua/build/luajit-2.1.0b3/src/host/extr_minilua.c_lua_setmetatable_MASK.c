#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/ * top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_19__ {struct TYPE_19__* metatable; } ;
typedef  TYPE_2__ Table ;
struct TYPE_20__ {TYPE_2__* metatable; } ;
struct TYPE_17__ {TYPE_2__** mt; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 TYPE_15__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(lua_State*L,int objindex){
TValue*obj;
Table*mt;
FUNC1(L,1);
obj=FUNC4(L,objindex);
FUNC2(L,obj);
if(FUNC9(L->top-1))
mt=NULL;
else{
FUNC7(L,FUNC10(L->top-1));
mt=FUNC3(L->top-1);
}
switch(FUNC11(obj)){
case 5:{
FUNC3(obj)->metatable=mt;
if(mt)
FUNC6(L,FUNC3(obj),mt);
break;
}
case 7:{
FUNC12(obj)->metatable=mt;
if(mt)
FUNC5(L,FUNC8(obj),mt);
break;
}
default:{
FUNC0(L)->mt[FUNC11(obj)]=mt;
break;
}
}
L->top--;
return 1;
}