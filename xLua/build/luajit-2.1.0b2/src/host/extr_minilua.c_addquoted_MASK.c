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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static void FUNC3(lua_State*L,luaL_Buffer*b,int arg){
size_t l;
const char*s=FUNC2(L,arg,&l);
FUNC0(b,'"');
while(l--){
switch(*s){
case'"':case'\\':case'\n':{
FUNC0(b,'\\');
FUNC0(b,*s);
break;
}
case'\r':{
FUNC1(b,"\\r",2);
break;
}
case'\0':{
FUNC1(b,"\\000",4);
break;
}
default:{
FUNC0(b,*s);
break;
}
}
s++;
}
FUNC0(b,'"');
}