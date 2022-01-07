
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ languages_initialized; int ** table; } ;
typedef int OT_Script ;
typedef TYPE_1__ LoadedScript ;


 scalar_t__ TRUE ;
 int USP10_LANGUAGE_TABLE_GPOS ;
 int USP10_LANGUAGE_TABLE_GSUB ;
 size_t USP10_SCRIPT_TABLE_GPOS ;
 size_t USP10_SCRIPT_TABLE_GSUB ;
 int usp10_script_add_language_list (TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void _initialize_language_cache(LoadedScript *script)
{
    const OT_Script *list;

    if (script->languages_initialized)
        return;

    if ((list = script->table[USP10_SCRIPT_TABLE_GSUB]))
        usp10_script_add_language_list(script, USP10_LANGUAGE_TABLE_GSUB, list);
    if ((list = script->table[USP10_SCRIPT_TABLE_GPOS]))
        usp10_script_add_language_list(script, USP10_LANGUAGE_TABLE_GPOS, list);

    script->languages_initialized = TRUE;
}
