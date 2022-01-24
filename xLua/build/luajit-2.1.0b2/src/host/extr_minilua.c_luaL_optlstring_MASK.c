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
 char const* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static const char*FUNC3(lua_State*L,int narg,
const char*def,size_t*len){
if(FUNC1(L,narg)){
if(len)
*len=(def?FUNC2(def):0);
return def;
}
else return FUNC0(L,narg,len);
}