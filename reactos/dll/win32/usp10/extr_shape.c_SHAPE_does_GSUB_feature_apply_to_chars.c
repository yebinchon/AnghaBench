
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WCHAR ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef scalar_t__ INT ;
typedef int HDC ;


 scalar_t__ GSUB_E_NOGLYPH ;
 int GetGlyphIndicesW (int ,int const*,int,int *,int ) ;
 scalar_t__ apply_GSUB_feature_to_glyph (int ,int *,int *,int *,int ,int,scalar_t__*,char const*) ;
 int * heap_calloc (int,int) ;
 int heap_free (int *) ;

int SHAPE_does_GSUB_feature_apply_to_chars(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc,
        const WCHAR *chars, int write_dir, int count, const char *feature)
{
    WORD *glyphs;
    INT glyph_count = count;
    INT rc;

    glyphs = heap_calloc(count, 2 * sizeof(*glyphs));
    GetGlyphIndicesW(hdc, chars, count, glyphs, 0);
    rc = apply_GSUB_feature_to_glyph(hdc, psa, psc, glyphs, 0, write_dir, &glyph_count, feature);
    if (rc > GSUB_E_NOGLYPH)
        rc = count - glyph_count;
    else
        rc = 0;

    heap_free(glyphs);
    return rc;
}
