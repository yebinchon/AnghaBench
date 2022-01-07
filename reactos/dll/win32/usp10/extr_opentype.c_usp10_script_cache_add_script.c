
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tag; } ;
struct TYPE_5__ {scalar_t__ script_count; TYPE_2__* scripts; int scripts_size; } ;
typedef TYPE_1__ ScriptCache ;
typedef int OPENTYPE_TAG ;
typedef TYPE_2__ LoadedScript ;


 int ERR (char*) ;
 int usp10_array_reserve (void**,int *,scalar_t__,int) ;

__attribute__((used)) static LoadedScript *usp10_script_cache_add_script(ScriptCache *script_cache, OPENTYPE_TAG tag)
{
    LoadedScript *script;

    if (!usp10_array_reserve((void **)&script_cache->scripts, &script_cache->scripts_size,
            script_cache->script_count + 1, sizeof(*script_cache->scripts)))
    {
        ERR("Failed to grow scripts array.\n");
        return ((void*)0);
    }

    script = &script_cache->scripts[script_cache->script_count++];
    script->tag = tag;

    return script;
}
