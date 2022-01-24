#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_15__ {int gcstate; TYPE_4__* rootgc; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_16__ {int /*<<< orphan*/  v; } ;
typedef  TYPE_3__ UpVal ;
struct TYPE_14__ {TYPE_4__* next; } ;
struct TYPE_17__ {TYPE_1__ gch; } ;
typedef  TYPE_4__ GCObject ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 TYPE_4__* FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(lua_State*L,UpVal*uv){
global_State*g=FUNC0(L);
GCObject*o=FUNC5(uv);
o->gch.next=g->rootgc;
g->rootgc=o;
if(FUNC2(o)){
if(g->gcstate==1){
FUNC1(o);
FUNC3(L,uv,uv->v);
}
else{
FUNC4(g,o);
}
}
}