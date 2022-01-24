#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  scalar_t__ StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(lua_State*L,int nargs,int nresults){
StkId func;
FUNC1(L,nargs+1);
FUNC2(L,nargs,nresults);
func=L->top-(nargs+1);
FUNC3(L,func,nresults);
FUNC0(L,nresults);
}