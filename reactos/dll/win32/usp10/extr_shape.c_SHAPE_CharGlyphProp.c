
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_7__ {int (* charGlyphPropProc ) (int ,int *,TYPE_1__*,int const*,int const,int const*,int const,int *,int *,int *) ;} ;
struct TYPE_6__ {size_t eScript; } ;
typedef int ScriptCache ;
typedef int SCRIPT_GLYPHPROP ;
typedef int SCRIPT_CHARPROP ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;


 int ShapeCharGlyphProp_Default (int *,TYPE_1__*,int const*,int const,int const*,int const,int *,int *,int *) ;
 TYPE_3__* ShapingData ;
 int load_ot_tables (int ,int *) ;
 int stub1 (int ,int *,TYPE_1__*,int const*,int const,int const*,int const,int *,int *,int *) ;

void SHAPE_CharGlyphProp(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, const WCHAR* pwcChars, const INT cChars, const WORD* pwGlyphs, const INT cGlyphs, WORD *pwLogClust, SCRIPT_CHARPROP *pCharProp, SCRIPT_GLYPHPROP *pGlyphProp)
{
    load_ot_tables(hdc, psc);

    if (ShapingData[psa->eScript].charGlyphPropProc)
        ShapingData[psa->eScript].charGlyphPropProc(hdc, psc, psa, pwcChars, cChars, pwGlyphs, cGlyphs, pwLogClust, pCharProp, pGlyphProp);
    else
        ShapeCharGlyphProp_Default(psc, psa, pwcChars, cChars, pwGlyphs, cGlyphs, pwLogClust, pCharProp, pGlyphProp);
}
