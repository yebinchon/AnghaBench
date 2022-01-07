
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* combining_lexical_function ) (int const) ;
typedef int WORD ;
typedef int WCHAR ;
typedef int INT ;
typedef int HDC ;
typedef scalar_t__ CHAR ;


 int GetGlyphIndicesW (int ,int*,int,int *,int ) ;
 scalar_t__* heap_alloc (int) ;
 int heap_free (scalar_t__*) ;
 int insert_glyph (int *,int*,int,int,int ,int,int *) ;

__attribute__((used)) static void mark_invalid_combinations(HDC hdc, const WCHAR* pwcChars, INT cChars, WORD *pwGlyphs, INT *pcGlyphs, INT write_dir, WORD *pwLogClust, combining_lexical_function lex)
{
    CHAR *context_type;
    int i,g;
    WCHAR invalid = 0x25cc;
    WORD invalid_glyph;

    context_type = heap_alloc(cChars);


    for (i = 0; i < cChars; i++)
       context_type[i] = lex(pwcChars[i]);

    GetGlyphIndicesW(hdc, &invalid, 1, &invalid_glyph, 0);
    for (i = 1, g=1; i < cChars - 1; i++, g++)
    {
        if (context_type[i] != 0 && context_type[i+write_dir]==context_type[i])
        {
            insert_glyph(pwGlyphs, pcGlyphs, cChars, write_dir, invalid_glyph, g, pwLogClust);
            g++;
        }
    }

    heap_free(context_type);
}
