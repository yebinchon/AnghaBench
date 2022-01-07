
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int * HRGN ;
typedef int * HDC ;


 int CLIPRGN ;
 int COMPLEXREGION ;
 int CombineRgn (int *,int *,int *,int ) ;
 int * CreateCompatibleDC (int *) ;
 int * CreateRectRgn (int,int,int,int) ;
 int DeleteObject (int *) ;
 int ERROR ;
 int ERROR_INVALID_HANDLE ;
 int EqualRgn (int *,int *) ;
 int ExcludeClipRect (int *,int,int,int,int) ;
 int GetLastError () ;
 int GetRandomRgn (int *,int *,int ) ;
 int NULLREGION ;
 int RGN_COPY ;
 int RGN_XOR ;
 int SIMPLEREGION ;
 int SelectClipRgn (int *,int *) ;
 int SetLastError (int) ;
 int TRUE ;
 int ok (int,char*) ;
 int ok_int (int ,int) ;

void Test_ExcludeClipRect()
{
    HDC hdc;
    HRGN hrgn, hrgn2;

    hdc = CreateCompatibleDC(((void*)0));
    ok(hdc != 0, "CreateCompatibleDC failed, skipping tests.\n");
    if (!hdc) return;

    hrgn2 = CreateRectRgn(0, 0, 0, 0);


    SetLastError(0x12345);
    ok_int(ExcludeClipRect(((void*)0), 0, 0, 0, 0), ERROR);
    ok_int(GetLastError(), ERROR_INVALID_HANDLE);


    SetLastError(0x12345);
    ok_int(ExcludeClipRect((HDC)(ULONG_PTR)0x12345, 0, 0, 0, 0), ERROR);
    ok_int(GetLastError(), ERROR_INVALID_HANDLE);
    SetLastError(0x12345);


    hrgn = CreateRectRgn(10, 10, 20, 30);
    ok_int(SelectClipRgn(hdc, hrgn), NULLREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    ok_int(EqualRgn(hrgn, hrgn2), TRUE);


    ok_int(ExcludeClipRect(hdc, 0, 0, 1, 1), COMPLEXREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    ok_int(EqualRgn(hrgn, hrgn2), TRUE);


    ok_int(ExcludeClipRect(hdc, 0, 0, 13, 50), COMPLEXREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    ok_int(CombineRgn(hrgn, hrgn2, ((void*)0), RGN_COPY), SIMPLEREGION);


    ok_int(ExcludeClipRect(hdc, 0, 0, 15, 15), COMPLEXREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    ok_int(CombineRgn(hrgn, hrgn2, ((void*)0), RGN_COPY), COMPLEXREGION);


    ok_int(ExcludeClipRect(hdc, 0, 0, 100, 100), NULLREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    ok_int(CombineRgn(hrgn, hrgn2, ((void*)0), RGN_COPY), NULLREGION);


    ok_int(SelectClipRgn(hdc, ((void*)0)), SIMPLEREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 0);
    ok_int(ExcludeClipRect(hdc, 0, 0, 1, 1), NULLREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    ok_int(CombineRgn(hrgn, hrgn2, ((void*)0), RGN_COPY), NULLREGION);


    ok_int(SelectClipRgn(hdc, ((void*)0)), SIMPLEREGION);
    ok_int(ExcludeClipRect(hdc, -10, -10, 0, 0), COMPLEXREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    hrgn = CreateRectRgn(0, 0, 1, 1);
    ok_int(CombineRgn(hrgn2, hrgn2, hrgn, RGN_XOR), NULLREGION);


    ok_int(SelectClipRgn(hdc, ((void*)0)), SIMPLEREGION);
    ok_int(ExcludeClipRect(hdc, 100000, 100000, 100010, 100010), COMPLEXREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    hrgn = CreateRectRgn(0, 0, 1, 1);
    ok_int(EqualRgn(hrgn, hrgn2), TRUE);
    DeleteObject(hrgn);


    ok_int(SelectClipRgn(hdc, ((void*)0)), SIMPLEREGION);
    ok_int(ExcludeClipRect(hdc, 1, 1, -10, -20), NULLREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    hrgn = CreateRectRgn(0, 0, 0, 0);
    ok_int(CombineRgn(hrgn, hrgn2, ((void*)0), RGN_COPY), NULLREGION);

    ok_int(GetLastError(), 0x12345);

}
