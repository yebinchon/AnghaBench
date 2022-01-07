
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_color {int dummy; } ;
typedef int INT ;
typedef int * HDC ;
typedef int * HBITMAP ;


 int ARRAY_SIZE (int const*) ;
 int * CreateCompatibleDC (int *) ;
 int DeleteObject (int *) ;
 int * SelectObject (int *,int *) ;
 int * create_dib_section (int const,void**) ;
 int ok (int ,char*,...) ;
 int test_bitmap_colors (int *,struct test_color const**) ;
 int trace (char*,int const) ;

__attribute__((used)) static void test_bitmap_formats(const struct test_color ** colors)
{
    HBITMAP oldBmp, dib;
    HDC hdc;
    static const INT bpps [] = {4, 8, 16, 24, 32};
    INT i;
    void* dib_buffer;

    hdc = CreateCompatibleDC(((void*)0));
    ok (hdc != ((void*)0), "Failed creating a memory DC.\n");

    for (i = 0; i < ARRAY_SIZE(bpps); i++)
    {
        dib = create_dib_section(bpps[i], &dib_buffer);
        ok(dib != ((void*)0), "Failed to create DIB for %u bpp\n", bpps[i]);

        oldBmp = SelectObject(hdc, dib);
        ok (oldBmp != ((void*)0), "Failed to select the DIB\n");

        trace("testing DIB %ubpp\n", bpps[i]);

        test_bitmap_colors(hdc, colors);

        SelectObject(hdc, oldBmp);
        DeleteObject(dib);
    }
}
