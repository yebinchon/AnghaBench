
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_10__ {int GlyphClassDef; } ;
struct TYPE_7__ {int fClusterStart; int fDiacritic; int fZeroWidth; } ;
struct TYPE_9__ {TYPE_1__ sva; } ;
struct TYPE_8__ {TYPE_4__* GDEF_Table; } ;
typedef TYPE_2__ ScriptCache ;
typedef TYPE_3__ SCRIPT_GLYPHPROP ;
typedef TYPE_4__ GDEF_Header ;
typedef int BYTE ;




 int ERR (char*,int) ;
 int GET_BE_WORD (int ) ;


 int OT_get_glyph_class (void*,int const) ;
 int USP10_FindGlyphInLogClust (int*,int const,int) ;

void OpenType_GDEF_UpdateGlyphProps(ScriptCache *psc, const WORD *pwGlyphs, const WORD cGlyphs, WORD* pwLogClust, const WORD cChars, SCRIPT_GLYPHPROP *pGlyphProp)
{
    int i;
    void *glyph_class_table = ((void*)0);

    if (psc->GDEF_Table)
    {
        const GDEF_Header *header = psc->GDEF_Table;
        WORD offset = GET_BE_WORD( header->GlyphClassDef );
        if (offset)
            glyph_class_table = (BYTE *)psc->GDEF_Table + offset;
    }

    for (i = 0; i < cGlyphs; i++)
    {
        WORD class;
        int char_count = 0;
        int k;

        k = USP10_FindGlyphInLogClust(pwLogClust, cChars, i);
        if (k >= 0)
        {
            for (; k < cChars && pwLogClust[k] == i; k++)
                char_count++;
        }

        class = OT_get_glyph_class( glyph_class_table, pwGlyphs[i] );

        switch (class)
        {
            case 0:
            case 131:
                pGlyphProp[i].sva.fClusterStart = 1;
                pGlyphProp[i].sva.fDiacritic = 0;
                pGlyphProp[i].sva.fZeroWidth = 0;
                break;
            case 129:
                pGlyphProp[i].sva.fClusterStart = 1;
                pGlyphProp[i].sva.fDiacritic = 0;
                pGlyphProp[i].sva.fZeroWidth = 0;
                break;
            case 128:
                pGlyphProp[i].sva.fClusterStart = 0;
                pGlyphProp[i].sva.fDiacritic = 1;
                pGlyphProp[i].sva.fZeroWidth = 1;
                break;
            case 130:
                pGlyphProp[i].sva.fClusterStart = 0;
                pGlyphProp[i].sva.fDiacritic = 0;
                pGlyphProp[i].sva.fZeroWidth = 0;
                break;
            default:
                ERR("Unknown glyph class %i\n",class);
                pGlyphProp[i].sva.fClusterStart = 1;
                pGlyphProp[i].sva.fDiacritic = 0;
                pGlyphProp[i].sva.fZeroWidth = 0;
        }

        if (char_count == 0)
            pGlyphProp[i].sva.fClusterStart = 0;
    }
}
