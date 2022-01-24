#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size_ci; int /*<<< orphan*/ * ci; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  CallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

__attribute__((used)) static CallInfo*FUNC3(lua_State*L){
if(L->size_ci>20000)
FUNC1(L,5);
else{
FUNC0(L,2*L->size_ci);
if(L->size_ci>20000)
FUNC2(L,"stack overflow");
}
return++L->ci;
}