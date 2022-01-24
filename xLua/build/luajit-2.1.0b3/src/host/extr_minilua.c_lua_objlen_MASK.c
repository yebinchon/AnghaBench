#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {size_t len; } ;
struct TYPE_3__ {size_t len; } ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC7(lua_State*L,int idx){
StkId o=FUNC1(L,idx);
switch(FUNC5(o)){
case 4:return FUNC4(o)->len;
case 7:return FUNC6(o)->len;
case 5:return FUNC2(FUNC0(o));
case 3:{
size_t l;
l=(FUNC3(L,o)?FUNC4(o)->len:0);
return l;
}
default:return 0;
}
}