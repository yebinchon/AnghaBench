#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char const* name; void* handle; scalar_t__ blocked_clients; } ;
struct TYPE_10__ {TYPE_2__* module; } ;
typedef  TYPE_1__ RedisModuleCtx ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 TYPE_1__ REDISMODULE_CTX_INIT ; 
 int REDISMODULE_ERR ; 
 int /*<<< orphan*/  REDISMODULE_EVENT_MODULE_CHANGE ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_MODULE_LOADED ; 
 int RTLD_LOCAL ; 
 int RTLD_NOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 char const* FUNC2 () ; 
 void* FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (void*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  modules ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const*,...) ; 

int FUNC12(const char *path, void **module_argv, int module_argc) {
    int (*onload)(void *, void **, int);
    void *handle;
    RedisModuleCtx ctx = REDISMODULE_CTX_INIT;

    handle = FUNC3(path,RTLD_NOW|RTLD_LOCAL);
    if (handle == NULL) {
        FUNC11(LL_WARNING, "Module %s failed to load: %s", path, FUNC2());
        return C_ERR;
    }
    onload = (int (*)(void *, void **, int))(unsigned long) FUNC4(handle,"RedisModule_OnLoad");
    if (onload == NULL) {
        FUNC1(handle);
        FUNC11(LL_WARNING,
            "Module %s does not export RedisModule_OnLoad() "
            "symbol. Module not loaded.",path);
        return C_ERR;
    }
    if (onload((void*)&ctx,module_argv,module_argc) == REDISMODULE_ERR) {
        if (ctx.module) {
            FUNC8(ctx.module);
            FUNC9(ctx.module);
            FUNC10(ctx.module);
            FUNC7(ctx.module);
        }
        FUNC1(handle);
        FUNC11(LL_WARNING,
            "Module %s initialization failed. Module not loaded",path);
        return C_ERR;
    }

    /* Redis module loaded! Register it. */
    FUNC0(modules,ctx.module->name,ctx.module);
    ctx.module->blocked_clients = 0;
    ctx.module->handle = handle;
    FUNC11(LL_NOTICE,"Module '%s' loaded from %s",ctx.module->name,path);
    /* Fire the loaded modules event. */
    FUNC5(REDISMODULE_EVENT_MODULE_CHANGE,
                          REDISMODULE_SUBEVENT_MODULE_LOADED,
                          ctx.module);

    FUNC6(&ctx);
    return C_OK;
}