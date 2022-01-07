
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_5__ {int uJustification; scalar_t__ fZeroWidth; } ;
struct TYPE_6__ {TYPE_1__ sva; } ;
typedef int ScriptCache ;
typedef TYPE_2__ SCRIPT_GLYPHPROP ;
typedef int SCRIPT_CHARPROP ;
typedef int SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;


 int SCRIPT_JUSTIFY_NONE ;
 int ShapeCharGlyphProp_Default (int *,int *,int const*,int const,int const*,int const,int *,int *,TYPE_2__*) ;

__attribute__((used)) static void ShapeCharGlyphProp_Latin( HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, const WCHAR* pwcChars, const INT cChars, const WORD* pwGlyphs, const INT cGlyphs, WORD *pwLogClust, SCRIPT_CHARPROP *pCharProp, SCRIPT_GLYPHPROP *pGlyphProp )
{
    int i;

    ShapeCharGlyphProp_Default( psc, psa, pwcChars, cChars, pwGlyphs, cGlyphs, pwLogClust, pCharProp, pGlyphProp);

    for (i = 0; i < cGlyphs; i++)
        if (pGlyphProp[i].sva.fZeroWidth)
            pGlyphProp[i].sva.uJustification = SCRIPT_JUSTIFY_NONE;
}
