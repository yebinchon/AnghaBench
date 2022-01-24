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
 char* LUA_DBLIBNAME ; 
 char* LUA_LOADLIBNAME ; 
 char* LUA_MATHLIBNAME ; 
 char* LUA_OSLIBNAME ; 
 char* LUA_STRLIBNAME ; 
 char* LUA_TABLIBNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  luaopen_base ; 
 int /*<<< orphan*/  luaopen_bit ; 
 int /*<<< orphan*/  luaopen_cjson ; 
 int /*<<< orphan*/  luaopen_cmsgpack ; 
 int /*<<< orphan*/  luaopen_debug ; 
 int /*<<< orphan*/  luaopen_math ; 
 int /*<<< orphan*/  luaopen_os ; 
 int /*<<< orphan*/  luaopen_package ; 
 int /*<<< orphan*/  luaopen_string ; 
 int /*<<< orphan*/  luaopen_struct ; 
 int /*<<< orphan*/  luaopen_table ; 

void FUNC1(lua_State *lua) {
    FUNC0(lua, "", luaopen_base);
    FUNC0(lua, LUA_TABLIBNAME, luaopen_table);
    FUNC0(lua, LUA_STRLIBNAME, luaopen_string);
    FUNC0(lua, LUA_MATHLIBNAME, luaopen_math);
    FUNC0(lua, LUA_DBLIBNAME, luaopen_debug);
    FUNC0(lua, "cjson", luaopen_cjson);
    FUNC0(lua, "struct", luaopen_struct);
    FUNC0(lua, "cmsgpack", luaopen_cmsgpack);
    FUNC0(lua, "bit", luaopen_bit);

#if 0 /* Stuff that we don't load currently, for sandboxing concerns. */
    luaLoadLib(lua, LUA_LOADLIBNAME, luaopen_package);
    luaLoadLib(lua, LUA_OSLIBNAME, luaopen_os);
#endif
}