
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int newOtTag; } ;
struct TYPE_4__ {size_t eScript; } ;
typedef int ScriptCache ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef int OPENTYPE_TAG ;
typedef int HRESULT ;
typedef int BOOL ;


 int OpenType_GetFontScriptTags (int *,int ,int,int *,int*) ;
 int SUCCEEDED (int ) ;
 TYPE_3__* ShapingData ;

__attribute__((used)) static inline BOOL get_GSUB_Indic2(SCRIPT_ANALYSIS *psa, ScriptCache *psc)
{
    OPENTYPE_TAG tag;
    HRESULT hr;
    int count = 0;

    hr = OpenType_GetFontScriptTags(psc, ShapingData[psa->eScript].newOtTag, 1, &tag, &count);

    return(SUCCEEDED(hr));
}
