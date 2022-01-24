#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_13__ {int /*<<< orphan*/ ** mt; } ;
struct TYPE_12__ {int /*<<< orphan*/ * metatable; } ;
struct TYPE_11__ {int /*<<< orphan*/ * metatable; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC7(lua_State*L,int objindex){
const TValue*obj;
Table*mt=NULL;
int res;
obj=FUNC3(L,objindex);
switch(FUNC5(obj)){
case 5:
mt=FUNC2(obj)->metatable;
break;
case 7:
mt=FUNC6(obj)->metatable;
break;
default:
mt=FUNC0(L)->mt[FUNC5(obj)];
break;
}
if(mt==NULL)
res=0;
else{
FUNC4(L,L->top,mt);
FUNC1(L);
res=1;
}
return res;
}