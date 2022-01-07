
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_8__ {int * Sequence; int Coverage; } ;
struct TYPE_7__ {int * Substitute; int GlyphCount; } ;
struct TYPE_6__ {int SubTableCount; } ;
typedef TYPE_1__ OT_LookupTable ;
typedef size_t INT ;
typedef TYPE_2__ GSUB_Sequence ;
typedef TYPE_3__ GSUB_MultipleSubstFormat1 ;
typedef int BYTE ;


 int GET_BE_WORD (int ) ;
 size_t GSUB_E_NOGLYPH ;
 scalar_t__ GSUB_get_subtable (TYPE_1__ const*,int) ;
 int GSUB_is_glyph_covered (int const*,int) ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int uniscribe ;

__attribute__((used)) static INT GSUB_apply_MultipleSubst(const OT_LookupTable *look, WORD *glyphs, INT glyph_index, INT write_dir, INT *glyph_count)
{
    int j;
    TRACE("Multiple Substitution Subtable\n");

    for (j = 0; j < GET_BE_WORD(look->SubTableCount); j++)
    {
        int offset, index;
        const GSUB_MultipleSubstFormat1 *msf1;
        msf1 = (const GSUB_MultipleSubstFormat1*)GSUB_get_subtable(look, j);

        offset = GET_BE_WORD(msf1->Coverage);
        index = GSUB_is_glyph_covered((const BYTE*)msf1+offset, glyphs[glyph_index]);
        if (index != -1)
        {
            const GSUB_Sequence *seq;
            int sub_count;
            int j;
            offset = GET_BE_WORD(msf1->Sequence[index]);
            seq = (const GSUB_Sequence*)((const BYTE*)msf1+offset);
            sub_count = GET_BE_WORD(seq->GlyphCount);
            TRACE("  Glyph 0x%x (+%i)->",glyphs[glyph_index],(sub_count-1));

            for (j = (*glyph_count)+(sub_count-1); j > glyph_index; j--)
                    glyphs[j] =glyphs[j-(sub_count-1)];

            for (j = 0; j < sub_count; j++)
                    if (write_dir < 0)
                        glyphs[glyph_index + (sub_count-1) - j] = GET_BE_WORD(seq->Substitute[j]);
                    else
                        glyphs[glyph_index + j] = GET_BE_WORD(seq->Substitute[j]);

            *glyph_count = *glyph_count + (sub_count - 1);

            if (TRACE_ON(uniscribe))
            {
                for (j = 0; j < sub_count; j++)
                    TRACE(" 0x%x",glyphs[glyph_index+j]);
                TRACE("\n");
            }

            if (write_dir > 0)
                return glyph_index + sub_count;
            else
                return glyph_index - 1;
        }
    }
    return GSUB_E_NOGLYPH;
}
