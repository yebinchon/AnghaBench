
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* requiredFeatures; } ;
struct TYPE_5__ {size_t eScript; } ;
typedef int ScriptCache ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef int LoadedFeature ;
typedef int HRESULT ;
typedef int HDC ;


 int FEATURE_ALL_TABLES ;
 int S_OK ;
 TYPE_3__* ShapingData ;
 int USP_E_SCRIPT_NOT_IN_FONT ;
 int * load_OT_feature (int ,TYPE_1__*,int *,int ,scalar_t__) ;
 int load_ot_tables (int ,int *) ;

HRESULT SHAPE_CheckFontForRequiredFeatures(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa)
{
    LoadedFeature *feature;
    int i;

    if (!ShapingData[psa->eScript].requiredFeatures)
        return S_OK;

    load_ot_tables(hdc, psc);


    i = 0;
    while (ShapingData[psa->eScript].requiredFeatures[i])
    {
        feature = load_OT_feature(hdc, psa, psc, FEATURE_ALL_TABLES, ShapingData[psa->eScript].requiredFeatures[i]);
        if (feature)
            return S_OK;
        i++;
    }

    return USP_E_SCRIPT_NOT_IN_FONT;
}
