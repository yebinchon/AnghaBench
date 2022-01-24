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
struct snlua {size_t mem_limit; struct skynet_context* ctx; int /*<<< orphan*/ * L; } ;
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 int LUA_OK ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  codecache ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct skynet_context*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC18 (int /*<<< orphan*/ *,int) ; 
 float FUNC19 (int /*<<< orphan*/ *,int) ; 
 char* FUNC20 (struct skynet_context*,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct skynet_context*) ; 
 char* FUNC22 (struct skynet_context*,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct skynet_context*,char*,...) ; 
 int /*<<< orphan*/  traceback ; 

__attribute__((used)) static int
FUNC24(struct snlua *l, struct skynet_context *ctx, const char * args, size_t sz) {
	lua_State *L = l->L;
	l->ctx = ctx;
	FUNC4(L, LUA_GCSTOP, 0);
	FUNC9(L, 1);  /* signal for libraries to ignore env. vars. */
	FUNC15(L, LUA_REGISTRYINDEX, "LUA_NOENV");
	FUNC2(L);
	FUNC11(L, ctx);
	FUNC15(L, LUA_REGISTRYINDEX, "skynet_context");
	FUNC3(L, "skynet.codecache", codecache , 0);
	FUNC8(L,1);

	const char *path = FUNC20(ctx, "lua_path","./lualib/?.lua;./lualib/?/init.lua");
	FUNC14(L, path);
	FUNC16(L, "LUA_PATH");
	const char *cpath = FUNC20(ctx, "lua_cpath","./luaclib/?.so");
	FUNC14(L, cpath);
	FUNC16(L, "LUA_CPATH");
	const char *service = FUNC20(ctx, "luaservice", "./service/?.lua");
	FUNC14(L, service);
	FUNC16(L, "LUA_SERVICE");
	const char *preload = FUNC22(ctx, "GETENV", "preload");
	FUNC14(L, preload);
	FUNC16(L, "LUA_PRELOAD");

	FUNC10(L, traceback);
	FUNC0(FUNC6(L) == 1);

	const char * loader = FUNC20(ctx, "lualoader", "./lualib/loader.lua");

	int r = FUNC1(L,loader);
	if (r != LUA_OK) {
		FUNC23(ctx, "Can't load %s : %s", loader, FUNC19(L, -1));
		FUNC21(ctx);
		return 1;
	}
	FUNC12(L, args, sz);
	r = FUNC7(L,1,0,1);
	if (r != LUA_OK) {
		FUNC23(ctx, "lua loader error : %s", FUNC19(L, -1));
		FUNC21(ctx);
		return 1;
	}
	FUNC17(L,0);
	if (FUNC5(L, LUA_REGISTRYINDEX, "memlimit") == LUA_TNUMBER) {
		size_t limit = FUNC18(L, -1);
		l->mem_limit = limit;
		FUNC23(ctx, "Set memory limit to %.2f M", (float)limit / (1024 * 1024));
		FUNC13(L);
		FUNC15(L, LUA_REGISTRYINDEX, "memlimit");
	}
	FUNC8(L, 1);

	FUNC4(L, LUA_GCRESTART, 0);

	return 0;
}