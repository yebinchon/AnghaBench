
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tag; } ;
struct TYPE_5__ {size_t script_count; TYPE_2__* scripts; } ;
typedef TYPE_1__ ScriptCache ;
typedef scalar_t__ OPENTYPE_TAG ;
typedef TYPE_2__ LoadedScript ;



__attribute__((used)) static LoadedScript *usp10_script_cache_get_script(ScriptCache *script_cache, OPENTYPE_TAG tag)
{
    size_t i;

    for (i = 0; i < script_cache->script_count; ++i)
    {
        if (script_cache->scripts[i].tag == tag)
            return &script_cache->scripts[i];
    }

    return ((void*)0);
}
