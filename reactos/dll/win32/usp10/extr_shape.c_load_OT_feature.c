
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ userLang; scalar_t__ GPOS_Table; scalar_t__ GSUB_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int OPENTYPE_TAG ;
typedef int LoadedFeature ;
typedef int HDC ;


 int FALSE ;
 int MS_MAKE_TAG (char const,char const,char const,char const) ;
 int OpenType_GetFontFeatureTags (TYPE_1__*,int,int,int ,int,char,int,int*,int*,int **) ;
 int TRACE (char*,int ,int *) ;
 int debugstr_an (char const*,int) ;
 int get_opentype_script (int ,int *,TYPE_1__*,int) ;

__attribute__((used)) static LoadedFeature* load_OT_feature(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc, char tableType, const char* feat)
{
    LoadedFeature *feature = ((void*)0);

    if (psc->GSUB_Table || psc->GPOS_Table)
    {
        int attempt = 2;
        OPENTYPE_TAG tags;
        OPENTYPE_TAG language;
        OPENTYPE_TAG script = 0x00000000;
        int cTags;

        do
        {
            script = get_opentype_script(hdc,psa,psc,(attempt==2));
            if (psc->userLang != 0)
                language = psc->userLang;
            else
                language = MS_MAKE_TAG('d','f','l','t');
            attempt--;

            OpenType_GetFontFeatureTags(psc, script, language, FALSE, MS_MAKE_TAG(feat[0],feat[1],feat[2],feat[3]), tableType, 1, &tags, &cTags, &feature);

        } while(attempt && !feature);


        if (!feature)
        {
            if (!script)
                script = MS_MAKE_TAG('l','a','t','n');
            OpenType_GetFontFeatureTags(psc, script, MS_MAKE_TAG('d','f','l','t'), FALSE, MS_MAKE_TAG(feat[0],feat[1],feat[2],feat[3]), tableType, 1, &tags, &cTags, &feature);
        }
    }

    TRACE("Feature %s located at %p\n",debugstr_an(feat,4),feature);
    return feature;
}
