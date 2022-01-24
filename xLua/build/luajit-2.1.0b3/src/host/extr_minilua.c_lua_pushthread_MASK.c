#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_9__ {TYPE_1__* mainthread; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(lua_State*L){
FUNC2(L,L->top,L);
FUNC1(L);
return(FUNC0(L)->mainthread==L);
}