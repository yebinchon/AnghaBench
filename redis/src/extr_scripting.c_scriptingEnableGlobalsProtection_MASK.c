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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(lua_State *lua) {
    char *s[32];
    sds code = FUNC3();
    int j = 0;

    /* strict.lua from: http://metalua.luaforge.net/src/lib/strict.lua.html.
     * Modified to be adapted to Redis. */
    s[j++]="local dbg=debug\n";
    s[j++]="local mt = {}\n";
    s[j++]="setmetatable(_G, mt)\n";
    s[j++]="mt.__newindex = function (t, n, v)\n";
    s[j++]="  if dbg.getinfo(2) then\n";
    s[j++]="    local w = dbg.getinfo(2, \"S\").what\n";
    s[j++]="    if w ~= \"main\" and w ~= \"C\" then\n";
    s[j++]="      error(\"Script attempted to create global variable '\"..tostring(n)..\"'\", 2)\n";
    s[j++]="    end\n";
    s[j++]="  end\n";
    s[j++]="  rawset(t, n, v)\n";
    s[j++]="end\n";
    s[j++]="mt.__index = function (t, n)\n";
    s[j++]="  if dbg.getinfo(2) and dbg.getinfo(2, \"S\").what ~= \"C\" then\n";
    s[j++]="    error(\"Script attempted to access nonexistent global variable '\"..tostring(n)..\"'\", 2)\n";
    s[j++]="  end\n";
    s[j++]="  return rawget(t, n)\n";
    s[j++]="end\n";
    s[j++]="debug = nil\n";
    s[j++]=NULL;

    for (j = 0; s[j] != NULL; j++) code = FUNC2(code,s[j],FUNC6(s[j]));
    FUNC0(lua,code,FUNC5(code),"@enable_strict_lua");
    FUNC1(lua,0,0,0);
    FUNC4(code);
}