#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  savedpc; TYPE_3__* ci; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_9__ {int /*<<< orphan*/  p; } ;
struct TYPE_12__ {TYPE_1__ l; } ;
struct TYPE_11__ {int /*<<< orphan*/  savedpc; } ;
typedef  TYPE_3__ CallInfo ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(lua_State*L,CallInfo*ci){
if(!FUNC1(ci))return-1;
if(ci==L->ci)
ci->savedpc=L->savedpc;
return FUNC2(ci->savedpc,FUNC0(ci)->l.p);
}