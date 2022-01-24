#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_18__ ;
typedef  struct TYPE_21__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_25__ {scalar_t__ top; int base; int /*<<< orphan*/  savedpc; TYPE_1__* ci; } ;
typedef  TYPE_3__ lua_State ;
struct TYPE_28__ {int func; int base; int top; int nresults; scalar_t__ tailcalls; } ;
struct TYPE_27__ {TYPE_4__* p; int /*<<< orphan*/  isC; } ;
struct TYPE_26__ {int maxstacksize; scalar_t__ numparams; int /*<<< orphan*/  code; int /*<<< orphan*/  is_vararg; } ;
struct TYPE_24__ {int (* f ) (TYPE_3__*) ;} ;
struct TYPE_23__ {int /*<<< orphan*/  savedpc; } ;
struct TYPE_22__ {TYPE_5__ l; } ;
struct TYPE_21__ {TYPE_2__ c; } ;
typedef  scalar_t__ StkId ;
typedef  TYPE_4__ Proto ;
typedef  TYPE_5__ LClosure ;
typedef  TYPE_6__ CallInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_4__*,int) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_18__* FUNC2 (scalar_t__) ; 
 TYPE_16__* FUNC3 (TYPE_3__*) ; 
 TYPE_6__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 
 void* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(lua_State*L,StkId func,int nresults){
LClosure*cl;
ptrdiff_t funcr;
if(!FUNC12(func))
func=FUNC11(L,func);
funcr=FUNC8(L,func);
cl=&FUNC2(func)->l;
L->ci->savedpc=L->savedpc;
if(!cl->isC){
CallInfo*ci;
StkId st,base;
Proto*p=cl->p;
FUNC5(L,p->maxstacksize);
func=FUNC7(L,funcr);
if(!p->is_vararg){
base=func+1;
if(L->top>base+p->numparams)
L->top=base+p->numparams;
}
else{
int nargs=FUNC1(L->top-func)-1;
base=FUNC0(L,p,nargs);
func=FUNC7(L,funcr);
}
ci=FUNC4(L);
ci->func=func;
L->base=ci->base=base;
ci->top=L->base+p->maxstacksize;
L->savedpc=p->code;
ci->tailcalls=0;
ci->nresults=nresults;
for(st=L->top;st<ci->top;st++)
FUNC9(st);
L->top=ci->top;
return 0;
}
else{
CallInfo*ci;
int n;
FUNC5(L,20);
ci=FUNC4(L);
ci->func=FUNC7(L,funcr);
L->base=ci->base=ci->func+1;
ci->top=L->top+20;
ci->nresults=nresults;
n=(*FUNC3(L)->c.f)(L);
if(n<0)
return 2;
else{
FUNC6(L,L->top-n);
return 1;
}
}
}