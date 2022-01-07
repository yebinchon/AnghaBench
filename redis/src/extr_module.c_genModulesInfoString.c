
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RedisModule {int filters; int apiver; int ver; int using; int usedby; } ;
typedef int sds ;
typedef int dictIterator ;
typedef int dictEntry ;


 int * dictGetIterator (int ) ;
 int dictGetKey (int *) ;
 struct RedisModule* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int genModulesInfoStringRenderModuleOptions (struct RedisModule*) ;
 int genModulesInfoStringRenderModulesList (int ) ;
 scalar_t__ listLength (int ) ;
 int modules ;
 int sdscatfmt (int ,char*,int ,int ,int ,int,int ,int ,int ) ;
 int sdsfree (int ) ;

sds genModulesInfoString(sds info) {
    dictIterator *di = dictGetIterator(modules);
    dictEntry *de;

    while ((de = dictNext(di)) != ((void*)0)) {
        sds name = dictGetKey(de);
        struct RedisModule *module = dictGetVal(de);

        sds usedby = genModulesInfoStringRenderModulesList(module->usedby);
        sds using = genModulesInfoStringRenderModulesList(module->using);
        sds options = genModulesInfoStringRenderModuleOptions(module);
        info = sdscatfmt(info,
            "module:name=%S,ver=%i,api=%i,filters=%i,"
            "usedby=%S,using=%S,options=%S\r\n",
                name, module->ver, module->apiver,
                (int)listLength(module->filters), usedby, using, options);
        sdsfree(usedby);
        sdsfree(using);
        sdsfree(options);
    }
    dictReleaseIterator(di);
    return info;
}
