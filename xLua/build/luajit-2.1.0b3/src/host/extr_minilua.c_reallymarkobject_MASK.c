#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_23__ ;
typedef  struct TYPE_29__   TYPE_21__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_19__ ;
typedef  struct TYPE_26__   TYPE_17__ ;
typedef  struct TYPE_25__   TYPE_15__ ;

/* Type definitions */
struct TYPE_33__ {TYPE_6__* gray; } ;
typedef  TYPE_4__ global_State ;
struct TYPE_31__ {int /*<<< orphan*/  value; } ;
struct TYPE_34__ {TYPE_2__ u; int /*<<< orphan*/ * v; } ;
typedef  TYPE_5__ UpVal ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_28__ {int tt; } ;
struct TYPE_35__ {TYPE_1__ gch; } ;
struct TYPE_32__ {TYPE_6__* gclist; } ;
struct TYPE_30__ {TYPE_3__ c; } ;
struct TYPE_29__ {TYPE_6__* gclist; } ;
struct TYPE_27__ {TYPE_6__* gclist; } ;
struct TYPE_26__ {TYPE_6__* gclist; } ;
struct TYPE_25__ {int /*<<< orphan*/ * env; int /*<<< orphan*/ * metatable; } ;
typedef  TYPE_6__ GCObject ;

/* Variables and functions */
 TYPE_23__* FUNC0 (TYPE_6__*) ; 
 TYPE_21__* FUNC1 (TYPE_6__*) ; 
 TYPE_19__* FUNC2 (TYPE_6__*) ; 
 TYPE_17__* FUNC3 (TYPE_6__*) ; 
 TYPE_15__* FUNC4 (TYPE_6__*) ; 
 TYPE_5__* FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 

__attribute__((used)) static void FUNC10(global_State*g,GCObject*o){
FUNC9(o);
switch(o->gch.tt){
case 4:{
return;
}
case 7:{
Table*mt=FUNC4(o)->metatable;
FUNC6(o);
if(mt)FUNC7(g,mt);
FUNC7(g,FUNC4(o)->env);
return;
}
case(8+2):{
UpVal*uv=FUNC5(o);
FUNC8(g,uv->v);
if(uv->v==&uv->u.value)
FUNC6(o);
return;
}
case 6:{
FUNC0(o)->c.gclist=g->gray;
g->gray=o;
break;
}
case 5:{
FUNC1(o)->gclist=g->gray;
g->gray=o;
break;
}
case 8:{
FUNC3(o)->gclist=g->gray;
g->gray=o;
break;
}
case(8+1):{
FUNC2(o)->gclist=g->gray;
g->gray=o;
break;
}
default:;
}
}