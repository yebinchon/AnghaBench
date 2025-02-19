
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_8__ {scalar_t__ fRTL; int fLogicalOrder; } ;
struct TYPE_7__ {int GSUB_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef TYPE_2__ SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;


 int ERR (char*) ;
 int GSUB_E_NOGLYPH ;
 int UpdateClusters (int,int,int,int,int *) ;
 int Xl ;
 int Xm ;
 int Xn ;
 int Xr ;
 int apply_GSUB_feature_to_glyph (int ,TYPE_2__*,TYPE_1__*,int *,int,int,int*,int ) ;
 int * contextual_features ;
 int* heap_alloc (int) ;
 int heap_free (int*) ;
 scalar_t__ mongolian_wordbreak (int ) ;

__attribute__((used)) static void ContextualShape_Mongolian(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    INT *context_shape;
    INT dirL;
    int i;
    int char_index;
    int glyph_index;

    if (*pcGlyphs != cChars)
    {
        ERR("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    if (!psa->fLogicalOrder && psa->fRTL)
        dirL = -1;
    else
        dirL = 1;

    if (!psc->GSUB_Table)
        return;

    context_shape = heap_alloc(cChars * sizeof(*context_shape));

    for (i = 0; i < cChars; i++)
    {
        if (i == 0 || mongolian_wordbreak(pwcChars[i-1]))
        {
            if ((i == cChars-1) || mongolian_wordbreak(pwcChars[i+1]))
                context_shape[i] = Xn;
            else
                context_shape[i] = Xl;
        }
        else
        {
            if ((i == cChars-1) || mongolian_wordbreak(pwcChars[i+1]))
                context_shape[i] = Xr;
            else
                context_shape[i] = Xm;
        }
    }


    if (dirL > 0)
        char_index = glyph_index = 0;
    else
        char_index = glyph_index = cChars-1;

    while(char_index < cChars && char_index >= 0)
    {
        INT nextIndex;
        INT prevCount = *pcGlyphs;
        nextIndex = apply_GSUB_feature_to_glyph(hdc, psa, psc, pwOutGlyphs, glyph_index, dirL, pcGlyphs, contextual_features[context_shape[char_index]]);

        if (nextIndex > GSUB_E_NOGLYPH)
        {
            UpdateClusters(nextIndex, *pcGlyphs - prevCount, dirL, cChars, pwLogClust);
            glyph_index = nextIndex;
            char_index += dirL;
        }
        else
        {
            char_index += dirL;
            glyph_index += dirL;
        }
    }

    heap_free(context_shape);
}
