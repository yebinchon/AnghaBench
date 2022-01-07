
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int * HRGN ;
typedef int * HDC ;


 int CLIPRGN ;
 int * CreateCompatibleDC (int *) ;
 int * CreateRectRgn (int,int,int,int) ;
 int DeleteObject (int *) ;
 int ERROR ;
 int ERROR_INVALID_HANDLE ;
 int EqualRgn (int *,int *) ;
 int GetLastError () ;
 int GetRandomRgn (int *,int *,int ) ;
 int MM_ANISOTROPIC ;
 int NULLREGION ;
 int OffsetClipRgn (int *,int,int) ;
 int SIMPLEREGION ;
 int SelectClipRgn (int *,int *) ;
 int SetLastError (int) ;
 int SetMapMode (int *,int ) ;
 int SetViewportExtEx (int *,int,int,int *) ;
 int SetWindowExtEx (int *,int,int,int *) ;
 int TRUE ;
 int ok (int,char*,...) ;
 int ok_int (int,int) ;

void Test_OffsetClipRgn()
{
    HDC hdc;
    HRGN hrgn, hrgn2;


    hdc = CreateCompatibleDC(((void*)0));
    ok(hdc != 0, "CreateCompatibleDC failed, skipping tests.\n");
    if (!hdc) return;

    hrgn2 = CreateRectRgn(0, 0, 0, 0);


    SetLastError(0x12345);
    ok_int(OffsetClipRgn(((void*)0), 0, 0), ERROR);
    ok_int(GetLastError(), ERROR_INVALID_HANDLE);


    SetLastError(0x12345);
    ok_int(OffsetClipRgn((HDC)(ULONG_PTR)0x12345, 0, 0), ERROR);
    ok((GetLastError() == 0x12345) || (GetLastError() == ERROR_INVALID_HANDLE), "Expected 0x12345 or ERROR_INVALID_HANDLE, got %ld\n", GetLastError());
    SetLastError(0x12345);


    SetLastError(0x12345);
    ok_int(SelectClipRgn(hdc, ((void*)0)), SIMPLEREGION);
    ok_int(OffsetClipRgn(hdc, 0, 0), SIMPLEREGION);
    ok_int(GetLastError(), 0x12345);
    SetLastError(0x12345);


    hrgn = CreateRectRgn(10, 10, 20, 30);
    ok_int(SelectClipRgn(hdc, hrgn), NULLREGION);
    DeleteObject(hrgn);
    ok_int(OffsetClipRgn(hdc, 10, 10), SIMPLEREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    hrgn = CreateRectRgn(20, 20, 30, 40);
    ok_int(EqualRgn(hrgn, hrgn2), TRUE);


    SetMapMode(hdc, MM_ANISOTROPIC);
    ok_int(SetViewportExtEx(hdc, 100, 100, ((void*)0)), 1);
    ok_int(SetWindowExtEx(hdc, 200, 50, ((void*)0)), 1);
    ok_int(OffsetClipRgn(hdc, 10, 10), SIMPLEREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    hrgn = CreateRectRgn(25, 40, 35, 60);
    ok_int(EqualRgn(hrgn, hrgn2), TRUE);
    ok_int(GetLastError(), 0x12345);

}
