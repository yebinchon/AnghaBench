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
struct skynet_config {int /*<<< orphan*/  profile; void* logservice; void* logger; void* daemon; void* bootstrap; void* harbor; void* module_path; void* thread; } ;
struct lua_State {int dummy; } ;

/* Variables and functions */
 int LUA_OK ; 
 int /*<<< orphan*/  FUNC0 (struct lua_State*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  load_config ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct lua_State*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct lua_State* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct lua_State*) ; 
 int /*<<< orphan*/  FUNC7 (struct lua_State*) ; 
 int FUNC8 (struct lua_State*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lua_State*,char const*) ; 
 char* FUNC10 (struct lua_State*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 void* FUNC12 (char*,int) ; 
 void* FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct skynet_config*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

int
FUNC20(int argc, char *argv[]) {
	const char * config_file = NULL ;
	if (argc > 1) {
		config_file = argv[1];
	} else {
		FUNC2(stderr, "Need a config file. Please read skynet wiki : https://github.com/cloudwu/skynet/wiki/Config\n"
			"usage: skynet configfilename\n");
		return 1;
	}

	FUNC17();
	FUNC15();

	FUNC14();

	struct skynet_config config;

#ifdef LUA_CACHELIB
	// init the lock of code cache
	luaL_initcodecache();
#endif

	struct lua_State *L = FUNC5();
	FUNC6(L);	// link lua lib

	int err =  FUNC4(L, load_config, FUNC19(load_config), "=[skynet config]", "t");
	FUNC1(err == LUA_OK);
	FUNC9(L, config_file);

	err = FUNC8(L, 1, 1, 0);
	if (err) {
		FUNC2(stderr,"%s\n",FUNC10(L,-1));
		FUNC7(L);
		return 1;
	}
	FUNC0(L);

	config.thread =  FUNC12("thread",8);
	config.module_path = FUNC13("cpath","./cservice/?.so");
	config.harbor = FUNC12("harbor", 1);
	config.bootstrap = FUNC13("bootstrap","snlua bootstrap");
	config.daemon = FUNC13("daemon", NULL);
	config.logger = FUNC13("logger", NULL);
	config.logservice = FUNC13("logservice", "logger");
	config.profile = FUNC11("profile", 1);

	FUNC7(L);

	FUNC18(&config);
	FUNC16();

	return 0;
}