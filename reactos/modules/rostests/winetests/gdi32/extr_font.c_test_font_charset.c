
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cd ;
typedef int WORD ;
typedef int UINT ;
typedef scalar_t__ const INT ;




 int FALSE ;


 int TRUE ;
 scalar_t__ get_glyph_indices (scalar_t__ const,int ,int *,int,int ) ;
 int is_font_installed (char*) ;
 int memcmp (int *,int *,int) ;
 int ok (int,char*,...) ;
 int pGetGlyphIndicesA ;
 int pGetGlyphIndicesW ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_font_charset(void)
{
    static struct charset_data
    {
        INT charset;
        UINT code_page;
        WORD font_idxA[128], font_idxW[128];
    } cd[] =
    {
        { 131, 1252 },
        { 129, 1251 },
        { 128, 130 }
    };
    int i;

    if (!pGetGlyphIndicesA || !pGetGlyphIndicesW)
    {
        win_skip("Skipping the font charset test on a Win9x platform\n");
        return;
    }

    if (!is_font_installed("Arial"))
    {
        skip("Arial is not installed\n");
        return;
    }

    for (i = 0; i < sizeof(cd)/sizeof(cd[0]); i++)
    {
        if (cd[i].charset == 128)
        {
            if (!is_font_installed("Symbol") && !is_font_installed("Wingdings"))
            {
                skip("Symbol or Wingdings is not installed\n");
                break;
            }
        }
        if (get_glyph_indices(cd[i].charset, cd[i].code_page, cd[i].font_idxA, 128, FALSE) &&
            get_glyph_indices(cd[i].charset, cd[i].code_page, cd[i].font_idxW, 128, TRUE))
            ok(!memcmp(cd[i].font_idxA, cd[i].font_idxW, 128*sizeof(WORD)), "%d: indices don't match\n", i);
    }

    ok(memcmp(cd[0].font_idxW, cd[1].font_idxW, 128*sizeof(WORD)), "0 vs 1: indices shouldn't match\n");
    if (i > 2)
    {
        ok(memcmp(cd[0].font_idxW, cd[2].font_idxW, 128*sizeof(WORD)), "0 vs 2: indices shouldn't match\n");
        ok(memcmp(cd[1].font_idxW, cd[2].font_idxW, 128*sizeof(WORD)), "1 vs 2: indices shouldn't match\n");
    }
    else
        skip("Symbol or Wingdings is not installed\n");
}
