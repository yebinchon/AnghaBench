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
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(lua_State*L,FILE*f){
luaL_Buffer b;
FUNC2(L,&b);
for(;;){
size_t l;
char*p=FUNC3(&b);
if(FUNC0(p,BUFSIZ,f)==NULL){
FUNC4(&b);
return(FUNC5(L,-1)>0);
}
l=FUNC6(p);
if(l==0||p[l-1]!='\n')
FUNC1(&b,l);
else{
FUNC1(&b,l-1);
FUNC4(&b);
return 1;
}
}
}