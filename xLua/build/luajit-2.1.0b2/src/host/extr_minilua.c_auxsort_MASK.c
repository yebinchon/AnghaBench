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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6(lua_State*L,int l,int u){
while(l<u){
int i,j;
FUNC3(L,1,l);
FUNC3(L,1,u);
if(FUNC5(L,-1,-2))
FUNC4(L,l,u);
else
FUNC1(L,2);
if(u-l==1)break;
i=(l+u)/2;
FUNC3(L,1,i);
FUNC3(L,1,l);
if(FUNC5(L,-2,-1))
FUNC4(L,i,l);
else{
FUNC1(L,1);
FUNC3(L,1,u);
if(FUNC5(L,-1,-2))
FUNC4(L,i,u);
else
FUNC1(L,2);
}
if(u-l==2)break;
FUNC3(L,1,i);
FUNC2(L,-1);
FUNC3(L,1,u-1);
FUNC4(L,i,u-1);
i=l;j=u-1;
for(;;){
while(FUNC3(L,1,++i),FUNC5(L,-1,-2)){
if(i>u)FUNC0(L,"invalid order function for sorting");
FUNC1(L,1);
}
while(FUNC3(L,1,--j),FUNC5(L,-3,-1)){
if(j<l)FUNC0(L,"invalid order function for sorting");
FUNC1(L,1);
}
if(j<i){
FUNC1(L,3);
break;
}
FUNC4(L,i,j);
}
FUNC3(L,1,u-1);
FUNC3(L,1,i);
FUNC4(L,u-1,i);
if(i-l<u-i){
j=l;i=i-1;l=i+2;
}
else{
j=i+1;i=u;u=j-2;
}
FUNC6(L,j,i);
}
}