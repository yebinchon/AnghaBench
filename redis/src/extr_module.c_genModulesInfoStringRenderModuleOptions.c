
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RedisModule {int options; } ;
typedef int sds ;


 int REDISMODULE_OPTIONS_HANDLE_IO_ERRORS ;
 int sdscat (int ,char*) ;
 int sdsnew (char*) ;
 int sdstrim (int ,char*) ;

sds genModulesInfoStringRenderModuleOptions(struct RedisModule *module) {
    sds output = sdsnew("[");
    if (module->options & REDISMODULE_OPTIONS_HANDLE_IO_ERRORS)
        output = sdscat(output,"handle-io-errors|");
    output = sdstrim(output,"|");
    output = sdscat(output,"]");
    return output;
}
