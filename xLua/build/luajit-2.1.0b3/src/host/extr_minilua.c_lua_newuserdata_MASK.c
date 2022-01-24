#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  void Udata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void*FUNC5(lua_State*L,size_t size){
Udata*u;
FUNC2(L);
u=FUNC3(L,size,FUNC1(L));
FUNC4(L,L->top,u);
FUNC0(L);
return u+1;
}