
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ scriptTag; } ;
struct TYPE_4__ {size_t eScript; } ;
typedef int ScriptCache ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef int OPENTYPE_TAG ;
typedef int HRESULT ;
typedef int HDC ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FEATURE_ALL_TABLES ;
 int FIXME (char*) ;
 int OpenType_GetFontFeatureTags (int *,int ,int ,int ,int,int ,int,int *,int*,int *) ;
 int TRUE ;
 int load_ot_tables (int ,int *) ;
 TYPE_2__* scriptInformation ;

HRESULT SHAPE_GetFontFeatureTags( HDC hdc, ScriptCache *psc,
                                  SCRIPT_ANALYSIS *psa, OPENTYPE_TAG tagScript,
                                  OPENTYPE_TAG tagLangSys, int cMaxTags,
                                  OPENTYPE_TAG *pFeatureTags, int *pcTags)
{
    HRESULT hr;
    BOOL filter = FALSE;

    load_ot_tables(hdc, psc);

    if (psa && scriptInformation[psa->eScript].scriptTag)
    {
        FIXME("Filtering not implemented\n");
        filter = TRUE;
    }

    hr = OpenType_GetFontFeatureTags(psc, tagScript, tagLangSys, filter, 0x00000000, FEATURE_ALL_TABLES, cMaxTags, pFeatureTags, pcTags, ((void*)0));

    if (FAILED(hr))
        *pcTags = 0;
    return hr;
}
