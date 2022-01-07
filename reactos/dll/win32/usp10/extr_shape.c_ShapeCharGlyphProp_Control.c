
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int WCHAR ;
struct TYPE_8__ {int fClusterStart; int fZeroWidth; int uJustification; scalar_t__ fDiacritic; } ;
struct TYPE_10__ {TYPE_2__ sva; } ;
struct TYPE_7__ {scalar_t__ const wgDefault; } ;
struct TYPE_9__ {TYPE_1__ sfp; } ;
typedef TYPE_3__ ScriptCache ;
typedef TYPE_4__ SCRIPT_GLYPHPROP ;
typedef int SCRIPT_CHARPROP ;
typedef int SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;


 int SCRIPT_JUSTIFY_BLANK ;

__attribute__((used)) static void ShapeCharGlyphProp_Control( HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, const WCHAR* pwcChars, const INT cChars, const WORD* pwGlyphs, const INT cGlyphs, WORD *pwLogClust, SCRIPT_CHARPROP *pCharProp, SCRIPT_GLYPHPROP *pGlyphProp )
{
    int i;
    for (i = 0; i < cGlyphs; i++)
    {
        pGlyphProp[i].sva.fClusterStart = 1;
        pGlyphProp[i].sva.fDiacritic = 0;
        pGlyphProp[i].sva.uJustification = SCRIPT_JUSTIFY_BLANK;

        if (pwGlyphs[i] == psc->sfp.wgDefault)
            pGlyphProp[i].sva.fZeroWidth = 0;
        else
            pGlyphProp[i].sva.fZeroWidth = 1;
    }
}
