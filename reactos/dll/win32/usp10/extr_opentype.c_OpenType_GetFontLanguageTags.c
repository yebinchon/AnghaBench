
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tag; scalar_t__* table; } ;
struct TYPE_8__ {int language_count; TYPE_2__ default_language; TYPE_1__* languages; } ;
struct TYPE_6__ {scalar_t__ tag; } ;
typedef int ScriptCache ;
typedef scalar_t__ OPENTYPE_TAG ;
typedef TYPE_3__ LoadedScript ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 size_t USP10_LANGUAGE_TABLE_GSUB ;
 int _initialize_language_cache (TYPE_3__*) ;
 int _initialize_script_cache (int *) ;
 TYPE_3__* usp10_script_cache_get_script (int *,scalar_t__) ;

HRESULT OpenType_GetFontLanguageTags(ScriptCache *psc, OPENTYPE_TAG script_tag, OPENTYPE_TAG searchingFor, int cMaxTags, OPENTYPE_TAG *pLanguageTags, int *pcTags)
{
    int i;
    HRESULT rc = S_OK;
    LoadedScript *script = ((void*)0);

    _initialize_script_cache(psc);
    if (!(script = usp10_script_cache_get_script(psc, script_tag)))
        return E_INVALIDARG;

    _initialize_language_cache(script);

    if (!searchingFor && cMaxTags < script->language_count)
        rc = E_OUTOFMEMORY;
    else if (searchingFor)
        rc = E_INVALIDARG;

    *pcTags = script->language_count;

    for (i = 0; i < script->language_count; i++)
    {
        if (i < cMaxTags)
            pLanguageTags[i] = script->languages[i].tag;

        if (searchingFor)
        {
            if (searchingFor == script->languages[i].tag)
            {
                pLanguageTags[0] = script->languages[i].tag;
                *pcTags = 1;
                rc = S_OK;
                break;
            }
        }
    }

    if (script->default_language.table[USP10_LANGUAGE_TABLE_GSUB])
    {
        if (i < cMaxTags)
            pLanguageTags[i] = script->default_language.tag;

        if (searchingFor && FAILED(rc))
        {
            pLanguageTags[0] = script->default_language.tag;
        }
        i++;
        *pcTags = (*pcTags) + 1;
    }

    return rc;
}
