
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ fRTL; int fLogicalOrder; } ;
typedef int ScriptCache ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef scalar_t__ INT ;
typedef int HDC ;


 int ERR (char*) ;
 int combining_lexical_Hebrew ;
 int mark_invalid_combinations (int ,int *,scalar_t__,int *,scalar_t__*,scalar_t__,int *,int ) ;

__attribute__((used)) static void ContextualShape_Hebrew(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    INT dirL;

    if (*pcGlyphs != cChars)
    {
        ERR("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    if (!psa->fLogicalOrder && psa->fRTL)
        dirL = -1;
    else
        dirL = 1;

    mark_invalid_combinations(hdc, pwcChars, cChars, pwOutGlyphs, pcGlyphs, dirL, pwLogClust, combining_lexical_Hebrew);
}
