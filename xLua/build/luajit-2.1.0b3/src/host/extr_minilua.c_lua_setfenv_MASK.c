#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_12__ {void* env; } ;
struct TYPE_15__ {TYPE_1__ c; } ;
struct TYPE_14__ {void* env; } ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(lua_State*L,int idx){
StkId o;
int res=1;
FUNC0(L,1);
o=FUNC6(L,idx);
FUNC1(L,o);
FUNC8(L,FUNC11(L->top-1));
switch(FUNC12(o)){
case 6:
FUNC2(o)->c.env=FUNC5(L->top-1);
break;
case 7:
FUNC13(o)->env=FUNC5(L->top-1);
break;
case 8:
FUNC9(L,FUNC4(FUNC10(o)),FUNC5(L->top-1));
break;
default:
res=0;
break;
}
if(res)FUNC7(L,FUNC3(o),FUNC5(L->top-1));
L->top--;
return res;
}