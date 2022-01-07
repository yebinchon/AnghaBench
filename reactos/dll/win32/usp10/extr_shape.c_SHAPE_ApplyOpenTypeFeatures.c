
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_13__ {scalar_t__ fRTL; } ;
struct TYPE_18__ {TYPE_1__ a; } ;
struct TYPE_17__ {size_t eScript; int fRTL; int fLogicalOrder; } ;
struct TYPE_16__ {int GSUB_Table; } ;
struct TYPE_15__ {int cotfRecords; TYPE_2__* potfRecords; } ;
struct TYPE_14__ {scalar_t__ lParameter; int tagFeature; } ;
typedef TYPE_3__ TEXTRANGE_PROPERTIES ;
typedef TYPE_4__ ScriptCache ;
typedef TYPE_5__ SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;


 int apply_GSUB_feature (int ,TYPE_5__*,TYPE_4__*,int *,int,int*,int,char const*,int *) ;
 int load_ot_tables (int ,TYPE_4__*) ;
 TYPE_6__* scriptInformation ;

__attribute__((used)) static void SHAPE_ApplyOpenTypeFeatures(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, INT cChars, const TEXTRANGE_PROPERTIES *rpRangeProperties, WORD *pwLogClust)
{
    int i;
    INT dirL;

    if (!rpRangeProperties)
        return;

    load_ot_tables(hdc, psc);

    if (!psc->GSUB_Table)
        return;

    if (scriptInformation[psa->eScript].a.fRTL && (!psa->fLogicalOrder || !psa->fRTL))
        dirL = -1;
    else
        dirL = 1;

    for (i = 0; i < rpRangeProperties->cotfRecords; i++)
    {
        if (rpRangeProperties->potfRecords[i].lParameter > 0)
        apply_GSUB_feature(hdc, psa, psc, pwOutGlyphs, dirL, pcGlyphs, cChars, (const char*)&rpRangeProperties->potfRecords[i].tagFeature, pwLogClust);
    }
}
