
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int tag; } ;
struct TYPE_9__ {int script_count; TYPE_1__* scripts; } ;
struct TYPE_8__ {int tag; } ;
typedef TYPE_2__ ScriptCache ;
typedef int OPENTYPE_TAG ;
typedef TYPE_3__ LoadedScript ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int USP_E_SCRIPT_NOT_IN_FONT ;
 int _initialize_script_cache (TYPE_2__*) ;
 int min (int,int) ;
 TYPE_3__* usp10_script_cache_get_script (TYPE_2__*,int ) ;

HRESULT OpenType_GetFontScriptTags(ScriptCache *psc, OPENTYPE_TAG searchingFor, int cMaxTags, OPENTYPE_TAG *pScriptTags, int *pcTags)
{
    int i;
    const LoadedScript *script;
    HRESULT rc = S_OK;

    _initialize_script_cache(psc);

    *pcTags = psc->script_count;

    if (searchingFor)
    {
        if (!(script = usp10_script_cache_get_script(psc, searchingFor)))
            return USP_E_SCRIPT_NOT_IN_FONT;

        *pScriptTags = script->tag;
        *pcTags = 1;
        return S_OK;
    }

    if (cMaxTags < *pcTags)
        rc = E_OUTOFMEMORY;

    cMaxTags = min(cMaxTags, psc->script_count);
    for (i = 0; i < cMaxTags; ++i)
    {
        pScriptTags[i] = psc->scripts[i].tag;
    }
    return rc;
}
