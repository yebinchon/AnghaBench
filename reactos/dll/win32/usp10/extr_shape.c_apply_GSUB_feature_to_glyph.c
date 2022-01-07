
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int GSUB_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int LoadedFeature ;
typedef int INT ;
typedef int HDC ;


 int FEATURE_GSUB_TABLE ;
 int GSUB_E_NOFEATURE ;
 int GSUB_apply_feature_all_lookups (int ,int *,int *,int ,int ,int *) ;
 int TRACE (char*,char const*) ;
 int * load_OT_feature (int ,int *,TYPE_1__*,int ,char const*) ;

__attribute__((used)) static INT apply_GSUB_feature_to_glyph(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache* psc, WORD *glyphs, INT index, INT write_dir, INT* glyph_count, const char* feat)
{
    LoadedFeature *feature;

    feature = load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, feat);
    if (!feature)
        return GSUB_E_NOFEATURE;

    TRACE("applying feature %s\n",feat);
    return GSUB_apply_feature_all_lookups(psc->GSUB_Table, feature, glyphs, index, write_dir, glyph_count);
}
