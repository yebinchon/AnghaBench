
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef enum usp10_script_table { ____Placeholder_usp10_script_table } usp10_script_table ;
struct TYPE_14__ {int const** table; } ;
struct TYPE_13__ {TYPE_1__* ScriptRecord; int ScriptCount; } ;
struct TYPE_12__ {size_t script_count; } ;
struct TYPE_11__ {int Script; int * ScriptTag; } ;
typedef TYPE_2__ ScriptCache ;
typedef size_t SIZE_T ;
typedef TYPE_3__ OT_ScriptList ;
typedef int OPENTYPE_TAG ;
typedef TYPE_4__ LoadedScript ;
typedef int BYTE ;


 int GET_BE_WORD (int ) ;
 int MS_MAKE_TAG (int ,int ,int ,int ) ;
 int TRACE (char*,...) ;
 TYPE_4__* usp10_script_cache_add_script (TYPE_2__*,int ) ;
 TYPE_4__* usp10_script_cache_get_script (TYPE_2__*,int ) ;

__attribute__((used)) static void usp10_script_cache_add_script_list(ScriptCache *script_cache,
        enum usp10_script_table table, const OT_ScriptList *list)
{
    SIZE_T initial_count, count, i;
    LoadedScript *script;
    OPENTYPE_TAG tag;

    TRACE("script_cache %p, table %#x, list %p.\n", script_cache, table, list);

    if (!(count = GET_BE_WORD(list->ScriptCount)))
        return;

    TRACE("Adding %lu scripts.\n", count);

    initial_count = script_cache->script_count;
    for (i = 0; i < count; ++i)
    {
        tag = MS_MAKE_TAG(list->ScriptRecord[i].ScriptTag[0],
                list->ScriptRecord[i].ScriptTag[1],
                list->ScriptRecord[i].ScriptTag[2],
                list->ScriptRecord[i].ScriptTag[3]);

        if (!(initial_count && (script = usp10_script_cache_get_script(script_cache, tag)))
                && !(script = usp10_script_cache_add_script(script_cache, tag)))
            return;

        script->table[table] = (const BYTE *)list + GET_BE_WORD(list->ScriptRecord[i].Script);
    }
}
