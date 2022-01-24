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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ ** FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(lua_State*L){
if(FUNC6(L,1)){
FUNC7(L,(-10001),1);
return FUNC1(L);
}
else{
const char*filename=FUNC4(L,1);
FILE**pf=FUNC8(L);
*pf=FUNC3(filename,"r");
if(*pf==NULL)
FUNC2(L,1,filename);
FUNC0(L,FUNC5(L),1);
return 1;
}
}