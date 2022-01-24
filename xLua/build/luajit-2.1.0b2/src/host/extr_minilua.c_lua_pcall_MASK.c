#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct CallS {int func; int nresults; } ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_10__ {int top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  f_call ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct CallS*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(lua_State*L,int nargs,int nresults,int errfunc){
struct CallS c;
int status;
ptrdiff_t func;
FUNC1(L,nargs+1);
FUNC3(L,nargs,nresults);
if(errfunc==0)
func=0;
else{
StkId o=FUNC4(L,errfunc);
FUNC2(L,o);
func=FUNC6(L,o);
}
c.func=L->top-(nargs+1);
c.nresults=nresults;
status=FUNC5(L,f_call,&c,FUNC6(L,c.func),func);
FUNC0(L,nresults);
return status;
}