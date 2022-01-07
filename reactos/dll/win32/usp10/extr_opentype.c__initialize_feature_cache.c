
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int FeatureList; } ;
struct TYPE_10__ {int FeatureList; } ;
struct TYPE_9__ {scalar_t__ features_initialized; int ** table; } ;
struct TYPE_8__ {TYPE_4__* GPOS_Table; TYPE_3__* GSUB_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int OT_LangSys ;
typedef int OT_FeatureList ;
typedef TYPE_2__ LoadedLanguage ;
typedef TYPE_3__ GSUB_Header ;
typedef TYPE_4__ GPOS_Header ;
typedef int BYTE ;


 int FEATURE_GPOS_TABLE ;
 int FEATURE_GSUB_TABLE ;
 int GET_BE_WORD (int ) ;
 scalar_t__ TRUE ;
 size_t USP10_LANGUAGE_TABLE_GPOS ;
 size_t USP10_LANGUAGE_TABLE_GSUB ;
 int usp10_language_add_feature_list (TYPE_2__*,int ,int const*,int const*) ;

__attribute__((used)) static void _initialize_feature_cache(ScriptCache *psc, LoadedLanguage *language)
{
    const GSUB_Header *gsub_header = psc->GSUB_Table;
    const GPOS_Header *gpos_header = psc->GPOS_Table;
    const OT_FeatureList *feature_list;
    const OT_LangSys *lang;

    if (language->features_initialized)
        return;

    if ((lang = language->table[USP10_LANGUAGE_TABLE_GSUB]))
    {
        feature_list = (const OT_FeatureList *)((const BYTE *)gsub_header + GET_BE_WORD(gsub_header->FeatureList));
        usp10_language_add_feature_list(language, FEATURE_GSUB_TABLE, lang, feature_list);
    }

    if ((lang = language->table[USP10_LANGUAGE_TABLE_GPOS]))
    {
        feature_list = (const OT_FeatureList *)((const BYTE *)gpos_header + GET_BE_WORD(gpos_header->FeatureList));
        usp10_language_add_feature_list(language, FEATURE_GPOS_TABLE, lang, feature_list);
    }

    language->features_initialized = TRUE;
}
