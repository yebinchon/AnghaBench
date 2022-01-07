
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char tableType; scalar_t__ tag; } ;
struct TYPE_11__ {scalar_t__ tag; int feature_count; TYPE_3__* features; int * table; } ;
struct TYPE_10__ {TYPE_2__ default_language; } ;
typedef int ScriptCache ;
typedef scalar_t__ OPENTYPE_TAG ;
typedef TYPE_1__ LoadedScript ;
typedef TYPE_2__ LoadedLanguage ;
typedef TYPE_3__ LoadedFeature ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 size_t USP10_LANGUAGE_TABLE_GPOS ;
 size_t USP10_LANGUAGE_TABLE_GSUB ;
 int _initialize_feature_cache (int *,TYPE_2__*) ;
 int _initialize_language_cache (TYPE_1__*) ;
 int _initialize_script_cache (int *) ;
 TYPE_1__* usp10_script_cache_get_script (int *,scalar_t__) ;
 TYPE_2__* usp10_script_get_language (TYPE_1__*,scalar_t__) ;

HRESULT OpenType_GetFontFeatureTags(ScriptCache *psc, OPENTYPE_TAG script_tag, OPENTYPE_TAG language_tag, BOOL filtered, OPENTYPE_TAG searchingFor, char tableType, int cMaxTags, OPENTYPE_TAG *pFeatureTags, int *pcTags, LoadedFeature** feature)
{
    int i;
    LoadedLanguage *language;
    LoadedScript *script;
    HRESULT rc = S_OK;

    _initialize_script_cache(psc);
    if (!(script = usp10_script_cache_get_script(psc, script_tag)))
    {
        *pcTags = 0;
        if (!filtered)
            return S_OK;
        else
            return E_INVALIDARG;
    }

    _initialize_language_cache(script);

    language = &script->default_language;
    if (language->tag != language_tag || (!language->table[USP10_LANGUAGE_TABLE_GSUB]
            && !language->table[USP10_LANGUAGE_TABLE_GPOS]))
        language = usp10_script_get_language(script, language_tag);

    if (!language)
    {
        *pcTags = 0;
        return S_OK;
    }

    _initialize_feature_cache(psc, language);

    if (tableType)
    {
        *pcTags = 0;
        for (i = 0; i < language->feature_count; i++)
            if (language->features[i].tableType == tableType)
                *pcTags = (*pcTags)+1;
    }
    else
        *pcTags = language->feature_count;

    if (!searchingFor && cMaxTags < *pcTags)
        rc = E_OUTOFMEMORY;
    else if (searchingFor)
        rc = E_INVALIDARG;

    for (i = 0; i < language->feature_count; i++)
    {
        if (i < cMaxTags)
        {
            if (!tableType || language->features[i].tableType == tableType)
                pFeatureTags[i] = language->features[i].tag;
        }

        if (searchingFor)
        {
            if ((searchingFor == language->features[i].tag) &&
                (!tableType || language->features[i].tableType == tableType))
            {
                pFeatureTags[0] = language->features[i].tag;
                *pcTags = 1;
                if (feature)
                    *feature = &language->features[i];
                rc = S_OK;
                break;
            }
        }
    }
    return rc;
}
