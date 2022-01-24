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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 

__attribute__((used)) static const char*FUNC5(lua_State*L,const char*strfrmt,char*form){
const char*p=strfrmt;
while(*p!='\0'&&FUNC2("-+ #0",*p)!=NULL)p++;
if((size_t)(p-strfrmt)>=sizeof("-+ #0"))
FUNC1(L,"invalid format (repeated flags)");
if(FUNC0(FUNC4(*p)))p++;
if(FUNC0(FUNC4(*p)))p++;
if(*p=='.'){
p++;
if(FUNC0(FUNC4(*p)))p++;
if(FUNC0(FUNC4(*p)))p++;
}
if(FUNC0(FUNC4(*p)))
FUNC1(L,"invalid format (width or precision too long)");
*(form++)='%';
FUNC3(form,strfrmt,p-strfrmt+1);
form+=p-strfrmt+1;
*form='\0';
return p;
}