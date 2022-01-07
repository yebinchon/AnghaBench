
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char const* name; void* handle; scalar_t__ blocked_clients; } ;
struct TYPE_10__ {TYPE_2__* module; } ;
typedef TYPE_1__ RedisModuleCtx ;


 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 TYPE_1__ REDISMODULE_CTX_INIT ;
 int REDISMODULE_ERR ;
 int REDISMODULE_EVENT_MODULE_CHANGE ;
 int REDISMODULE_SUBEVENT_MODULE_LOADED ;
 int RTLD_LOCAL ;
 int RTLD_NOW ;
 int dictAdd (int ,char const*,TYPE_2__*) ;
 int dlclose (void*) ;
 char const* dlerror () ;
 void* dlopen (char const*,int) ;
 scalar_t__ dlsym (void*,char*) ;
 int moduleFireServerEvent (int ,int ,TYPE_2__*) ;
 int moduleFreeContext (TYPE_1__*) ;
 int moduleFreeModuleStructure (TYPE_2__*) ;
 int moduleUnregisterCommands (TYPE_2__*) ;
 int moduleUnregisterSharedAPI (TYPE_2__*) ;
 int moduleUnregisterUsedAPI (TYPE_2__*) ;
 int modules ;
 int serverLog (int ,char*,char const*,...) ;

int moduleLoad(const char *path, void **module_argv, int module_argc) {
    int (*onload)(void *, void **, int);
    void *handle;
    RedisModuleCtx ctx = REDISMODULE_CTX_INIT;

    handle = dlopen(path,RTLD_NOW|RTLD_LOCAL);
    if (handle == ((void*)0)) {
        serverLog(LL_WARNING, "Module %s failed to load: %s", path, dlerror());
        return C_ERR;
    }
    onload = (int (*)(void *, void **, int))(unsigned long) dlsym(handle,"RedisModule_OnLoad");
    if (onload == ((void*)0)) {
        dlclose(handle);
        serverLog(LL_WARNING,
            "Module %s does not export RedisModule_OnLoad() "
            "symbol. Module not loaded.",path);
        return C_ERR;
    }
    if (onload((void*)&ctx,module_argv,module_argc) == REDISMODULE_ERR) {
        if (ctx.module) {
            moduleUnregisterCommands(ctx.module);
            moduleUnregisterSharedAPI(ctx.module);
            moduleUnregisterUsedAPI(ctx.module);
            moduleFreeModuleStructure(ctx.module);
        }
        dlclose(handle);
        serverLog(LL_WARNING,
            "Module %s initialization failed. Module not loaded",path);
        return C_ERR;
    }


    dictAdd(modules,ctx.module->name,ctx.module);
    ctx.module->blocked_clients = 0;
    ctx.module->handle = handle;
    serverLog(LL_NOTICE,"Module '%s' loaded from %s",ctx.module->name,path);

    moduleFireServerEvent(REDISMODULE_EVENT_MODULE_CHANGE,
                          REDISMODULE_SUBEVENT_MODULE_LOADED,
                          ctx.module);

    moduleFreeContext(&ctx);
    return C_OK;
}
