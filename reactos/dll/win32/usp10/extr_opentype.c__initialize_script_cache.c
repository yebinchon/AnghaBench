
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ScriptList; } ;
struct TYPE_7__ {int ScriptList; } ;
struct TYPE_6__ {scalar_t__ scripts_initialized; TYPE_3__* GPOS_Table; TYPE_2__* GSUB_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int OT_ScriptList ;
typedef TYPE_2__ GSUB_Header ;
typedef TYPE_3__ GPOS_Header ;
typedef int BYTE ;


 int GET_BE_WORD (int ) ;
 scalar_t__ TRUE ;
 int USP10_SCRIPT_TABLE_GPOS ;
 int USP10_SCRIPT_TABLE_GSUB ;
 int usp10_script_cache_add_script_list (TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void _initialize_script_cache(ScriptCache *script_cache)
{
    const GPOS_Header *gpos_header;
    const GSUB_Header *gsub_header;

    if (script_cache->scripts_initialized)
        return;

    if ((gsub_header = script_cache->GSUB_Table))
        usp10_script_cache_add_script_list(script_cache, USP10_SCRIPT_TABLE_GSUB,
                (const OT_ScriptList *)((const BYTE *)gsub_header + GET_BE_WORD(gsub_header->ScriptList)));

    if ((gpos_header = script_cache->GPOS_Table))
        usp10_script_cache_add_script_list(script_cache, USP10_SCRIPT_TABLE_GPOS,
                (const OT_ScriptList *)((const BYTE *)gpos_header + GET_BE_WORD(gpos_header->ScriptList)));

    script_cache->scripts_initialized = TRUE;
}
