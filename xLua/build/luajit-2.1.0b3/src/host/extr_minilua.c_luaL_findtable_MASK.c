#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (char const*,char) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static const char*FUNC11(lua_State*L,int idx,
const char*fname,int szhint){
const char*e;
FUNC5(L,idx);
do{
e=FUNC9(fname,'.');
if(e==NULL)e=fname+FUNC10(fname);
FUNC4(L,fname,e-fname);
FUNC6(L,-2);
if(FUNC1(L,-1)){
FUNC3(L,1);
FUNC0(L,0,(*e=='.'?1:szhint));
FUNC4(L,fname,e-fname);
FUNC5(L,-2);
FUNC8(L,-4);
}
else if(!FUNC2(L,-1)){
FUNC3(L,2);
return fname;
}
FUNC7(L,-2);
fname=e+1;
}while(*e=='.');
return NULL;
}