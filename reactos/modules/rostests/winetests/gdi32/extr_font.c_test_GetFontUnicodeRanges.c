
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lf ;
struct TYPE_11__ {size_t cRanges; TYPE_1__* ranges; } ;
struct TYPE_10__ {int lfFaceName; } ;
struct TYPE_9__ {int cGlyphs; int wcLow; } ;
typedef TYPE_2__ LOGFONTA ;
typedef int HFONT ;
typedef int * HDC ;
typedef TYPE_3__ GLYPHSET ;
typedef size_t DWORD ;


 int DeleteObject (int ) ;
 int * GetDC (int ) ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int ReleaseDC (int *,int *) ;
 int SelectObject (int *,int ) ;
 int create_font (char*,TYPE_2__*) ;
 int lstrcpyA (int ,char*) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (size_t,char*) ;
 size_t pGetFontUnicodeRanges (int *,TYPE_3__*) ;
 int trace (char*,size_t,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetFontUnicodeRanges(void)
{
    LOGFONTA lf;
    HDC hdc;
    HFONT hfont, hfont_old;
    DWORD size;
    GLYPHSET *gs;
    DWORD i;

    if (!pGetFontUnicodeRanges)
    {
        win_skip("GetFontUnicodeRanges not available before W2K\n");
        return;
    }

    memset(&lf, 0, sizeof(lf));
    lstrcpyA(lf.lfFaceName, "Arial");
    hfont = create_font("Arial", &lf);

    hdc = GetDC(0);
    hfont_old = SelectObject(hdc, hfont);

    size = pGetFontUnicodeRanges(((void*)0), ((void*)0));
    ok(!size, "GetFontUnicodeRanges succeeded unexpectedly\n");

    size = pGetFontUnicodeRanges(hdc, ((void*)0));
    ok(size, "GetFontUnicodeRanges failed unexpectedly\n");

    gs = HeapAlloc(GetProcessHeap(), 0, size);

    size = pGetFontUnicodeRanges(hdc, gs);
    ok(size, "GetFontUnicodeRanges failed\n");

    if (0)
        for (i = 0; i < gs->cRanges; i++)
            trace("%03d wcLow %04x cGlyphs %u\n", i, gs->ranges[i].wcLow, gs->ranges[i].cGlyphs);
    trace("found %u ranges\n", gs->cRanges);

    HeapFree(GetProcessHeap(), 0, gs);

    SelectObject(hdc, hfont_old);
    DeleteObject(hfont);
    ReleaseDC(((void*)0), hdc);
}
