
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WCHAR ;
typedef int ScriptCache ;
typedef int SCRIPT_GLYPHPROP ;
typedef int SCRIPT_CHARPROP ;
typedef int SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;


 int ShapeCharGlyphProp_BaseIndic (int ,int *,int *,int const*,int const,int const*,int const,int *,int *,int *,int ,int ,int ) ;
 int TRUE ;
 int gurmukhi_lex ;

__attribute__((used)) static void ShapeCharGlyphProp_Gurmukhi( HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, const WCHAR* pwcChars, const INT cChars, const WORD* pwGlyphs, const INT cGlyphs, WORD *pwLogClust, SCRIPT_CHARPROP *pCharProp, SCRIPT_GLYPHPROP *pGlyphProp )
{
    ShapeCharGlyphProp_BaseIndic(hdc, psc, psa, pwcChars, cChars, pwGlyphs, cGlyphs, pwLogClust, pCharProp, pGlyphProp, gurmukhi_lex, TRUE, TRUE);
}
