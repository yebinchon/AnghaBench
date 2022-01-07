
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_13__ {scalar_t__ fRTL; int fLogicalOrder; } ;
struct TYPE_12__ {int fCanGlyphAlone; } ;
struct TYPE_10__ {void* uJustification; scalar_t__ fClusterStart; } ;
struct TYPE_11__ {TYPE_1__ sva; } ;
typedef int ScriptCache ;
typedef TYPE_2__ SCRIPT_GLYPHPROP ;
typedef TYPE_3__ SCRIPT_CHARPROP ;
typedef TYPE_4__ SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;


 int OpenType_GDEF_UpdateGlyphProps (int *,int const*,int const,int*,int const,TYPE_2__*) ;
 void* SCRIPT_JUSTIFY_CHARACTER ;
 void* SCRIPT_JUSTIFY_NONE ;
 int USP10_FindGlyphInLogClust (int*,int const,int) ;
 int UpdateClustersFromGlyphProp (int const,int const,int*,TYPE_2__*) ;

__attribute__((used)) static void ShapeCharGlyphProp_Thai( HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, const WCHAR* pwcChars, const INT cChars, const WORD* pwGlyphs, const INT cGlyphs, WORD *pwLogClust, SCRIPT_CHARPROP *pCharProp, SCRIPT_GLYPHPROP *pGlyphProp )
{
    int i;
    int finaGlyph;
    INT dirL;

    if (!psa->fLogicalOrder && psa->fRTL)
    {
        finaGlyph = 0;
        dirL = -1;
    }
    else
    {
        finaGlyph = cGlyphs-1;
        dirL = 1;
    }

    OpenType_GDEF_UpdateGlyphProps(psc, pwGlyphs, cGlyphs, pwLogClust, cChars, pGlyphProp);

    for (i = 0; i < cGlyphs; i++)
    {
        int k;
        int char_index[20];
        int char_count = 0;

        k = USP10_FindGlyphInLogClust(pwLogClust, cChars, i);
        if (k>=0)
        {
            for (; k < cChars && pwLogClust[k] == i; k++)
                char_index[char_count++] = k;
        }

        if (i == finaGlyph)
            pGlyphProp[i].sva.uJustification = SCRIPT_JUSTIFY_NONE;
        else
            pGlyphProp[i].sva.uJustification = SCRIPT_JUSTIFY_CHARACTER;

        if (char_count == 0)
            continue;

        if (char_count ==1 && pwcChars[char_index[0]] == 0x0020)
            pCharProp[char_index[0]].fCanGlyphAlone = 1;


        if (char_count == 1 && pwcChars[char_index[0]] == 0x0e33)
            pGlyphProp[i].sva.fClusterStart = 0;
    }

    UpdateClustersFromGlyphProp(cGlyphs, cChars, pwLogClust, pGlyphProp);


    for (i = 0; i < cGlyphs; i++)
    {
        if (!pGlyphProp[i].sva.fClusterStart)
            pGlyphProp[i-dirL].sva.uJustification = SCRIPT_JUSTIFY_NONE;
    }
}
