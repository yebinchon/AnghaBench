
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RedisModule {int name; int using; int usedby; int filters; int types; } ;


 int listRelease (int ) ;
 int sdsfree (int ) ;
 int zfree (struct RedisModule*) ;

void moduleFreeModuleStructure(struct RedisModule *module) {
    listRelease(module->types);
    listRelease(module->filters);
    listRelease(module->usedby);
    listRelease(module->using);
    sdsfree(module->name);
    zfree(module);
}
