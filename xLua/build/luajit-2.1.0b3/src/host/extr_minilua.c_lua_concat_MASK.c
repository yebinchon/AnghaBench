#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ top; scalar_t__ base; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(lua_State*L,int n){
FUNC0(L,n);
if(n>=2){
FUNC3(L);
FUNC5(L,n,FUNC2(L->top-L->base)-1);
L->top-=(n-1);
}
else if(n==0){
FUNC6(L,L->top,FUNC4(L,"",0));
FUNC1(L);
}
}