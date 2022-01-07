
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ver; int apiver; scalar_t__ options; scalar_t__ in_hook; scalar_t__ in_call; void* filters; void* using; void* usedby; void* types; int name; } ;
struct TYPE_5__ {TYPE_2__* module; } ;
typedef TYPE_1__ RedisModuleCtx ;
typedef TYPE_2__ RedisModule ;


 void* listCreate () ;
 int sdsnew (char*) ;
 TYPE_2__* zmalloc (int) ;

void RM_SetModuleAttribs(RedisModuleCtx *ctx, const char *name, int ver, int apiver) {
    RedisModule *module;

    if (ctx->module != ((void*)0)) return;
    module = zmalloc(sizeof(*module));
    module->name = sdsnew((char*)name);
    module->ver = ver;
    module->apiver = apiver;
    module->types = listCreate();
    module->usedby = listCreate();
    module->using = listCreate();
    module->filters = listCreate();
    module->in_call = 0;
    module->in_hook = 0;
    module->options = 0;
    ctx->module = module;
}
