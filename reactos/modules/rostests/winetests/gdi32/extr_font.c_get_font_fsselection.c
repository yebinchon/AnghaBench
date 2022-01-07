
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int otmSize; int otmfsSelection; } ;
typedef TYPE_1__ OUTLINETEXTMETRICA ;
typedef int LOGFONTA ;
typedef int * HFONT ;
typedef int HDC ;
typedef int DWORD ;


 int * CreateFontIndirectA (int *) ;
 int DeleteObject (int *) ;
 int GetDC (int ) ;
 int GetLastError () ;
 int GetOutlineTextMetricsA (int ,int,TYPE_1__*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int ReleaseDC (int ,int ) ;
 int * SelectObject (int ,int *) ;
 int ok (int,char*,...) ;

__attribute__((used)) static UINT get_font_fsselection(LOGFONTA *lf)
{
    OUTLINETEXTMETRICA *otm;
    HFONT hfont, hfont_old;
    DWORD ret, otm_size;
    UINT fsSelection;
    HDC hdc;

    hdc = GetDC(0);
    hfont = CreateFontIndirectA(lf);
    ok(hfont != ((void*)0), "failed to create a font\n");

    hfont_old = SelectObject(hdc, hfont);

    otm_size = GetOutlineTextMetricsA(hdc, 0, ((void*)0));
    otm = HeapAlloc(GetProcessHeap(), 0, otm_size);
    otm->otmSize = sizeof(*otm);
    ret = GetOutlineTextMetricsA(hdc, otm->otmSize, otm);
    ok(ret == otm->otmSize, "expected %u, got %u, error %d\n", otm->otmSize, ret, GetLastError());
    fsSelection = otm->otmfsSelection;
    HeapFree(GetProcessHeap(), 0, otm);
    SelectObject(hdc, hfont_old);
    DeleteObject(hfont);
    ReleaseDC(0, hdc);

    return fsSelection;
}
