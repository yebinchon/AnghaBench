
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int scriptTag; } ;
struct TYPE_4__ {size_t eScript; } ;
typedef int ScriptCache ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef int OPENTYPE_TAG ;
typedef int HRESULT ;
typedef int HDC ;


 scalar_t__ FAILED (int ) ;
 int OpenType_GetFontScriptTags (int *,int,int,int*,int*) ;
 int load_ot_tables (int ,int *) ;
 TYPE_2__* scriptInformation ;

HRESULT SHAPE_GetFontScriptTags( HDC hdc, ScriptCache *psc,
                                 SCRIPT_ANALYSIS *psa, int cMaxTags,
                                 OPENTYPE_TAG *pScriptTags, int *pcTags)
{
    HRESULT hr;
    OPENTYPE_TAG searching = 0x00000000;

    load_ot_tables(hdc, psc);

    if (psa && scriptInformation[psa->eScript].scriptTag)
        searching = scriptInformation[psa->eScript].scriptTag;

    hr = OpenType_GetFontScriptTags(psc, searching, cMaxTags, pScriptTags, pcTags);
    if (FAILED(hr))
        *pcTags = 0;
    return hr;
}
