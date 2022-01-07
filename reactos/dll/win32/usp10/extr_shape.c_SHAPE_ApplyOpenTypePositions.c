
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_14__ {int cotfRecords; TYPE_1__* potfRecords; } ;
struct TYPE_17__ {TYPE_2__ defaultGPOSTextRange; } ;
struct TYPE_16__ {size_t eScript; } ;
struct TYPE_15__ {int lf; int otm; int GPOS_Table; } ;
struct TYPE_13__ {scalar_t__ lParameter; int tagFeature; } ;
typedef TYPE_2__ TEXTRANGE_PROPERTIES ;
typedef TYPE_3__ ScriptCache ;
typedef TYPE_4__ SCRIPT_ANALYSIS ;
typedef int LoadedFeature ;
typedef int INT ;
typedef int HDC ;
typedef int GOFFSET ;


 int FEATURE_GPOS_TABLE ;
 int GPOS_apply_feature (TYPE_3__*,int ,int *,TYPE_4__*,int*,int *,int const*,int ,int *) ;
 TYPE_8__* ShapingData ;
 int * load_OT_feature (int ,TYPE_4__*,TYPE_3__*,int ,char const*) ;
 int load_ot_tables (int ,TYPE_3__*) ;

void SHAPE_ApplyOpenTypePositions(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, const WORD* pwGlyphs, INT cGlyphs, int *piAdvance, GOFFSET *pGoffset )
{
    const TEXTRANGE_PROPERTIES *rpRangeProperties = &ShapingData[psa->eScript].defaultGPOSTextRange;
    int i;

    load_ot_tables(hdc, psc);

    if (!psc->GPOS_Table || !psc->otm)
        return;

    for (i = 0; i < rpRangeProperties->cotfRecords; i++)
    {
        if (rpRangeProperties->potfRecords[i].lParameter > 0)
        {
            LoadedFeature *feature;

            feature = load_OT_feature(hdc, psa, psc, FEATURE_GPOS_TABLE, (const char*)&rpRangeProperties->potfRecords[i].tagFeature);
            if (!feature)
                continue;

            GPOS_apply_feature(psc, psc->otm, &psc->lf, psa, piAdvance, feature, pwGlyphs, cGlyphs, pGoffset);
        }
    }
}
