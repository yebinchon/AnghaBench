#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_8__ {int numparams; } ;
typedef  scalar_t__ StkId ;
typedef  TYPE_2__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static StkId FUNC3(lua_State*L,Proto*p,int actual){
int i;
int nfixargs=p->numparams;
Table*htab=NULL;
StkId base,fixed;
for(;actual<nfixargs;++actual)
FUNC1(L->top++);
fixed=L->top-actual;
base=L->top;
for(i=0;i<nfixargs;i++){
FUNC2(L,L->top++,fixed+i);
FUNC1(fixed+i);
}
if(htab){
FUNC0(L,L->top++,htab);
}
return base;
}