
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT_PTR ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_7; int member_8; int member_10; int member_9; int member_6; int member_5; } ;
struct TYPE_10__ {TYPE_1__ member_0; } ;
struct TYPE_9__ {scalar_t__ bmBits; int bmBitsPixel; int bmPlanes; int bmWidthBytes; int bmHeight; int bmWidth; int bmType; } ;
typedef scalar_t__ PVOID ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef int HANDLE ;
typedef TYPE_2__ DIBSECTION ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAPINFO ;
typedef TYPE_2__ BITMAP ;


 int BI_RGB ;
 scalar_t__ CreateDIBSection (int ,TYPE_3__*,int ,scalar_t__*,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (scalar_t__) ;
 int ERROR_SUCCESS ;
 int FillMemory (TYPE_2__*,int,int) ;
 int GetDC (int ) ;
 int GetLastError () ;
 int GetObject (scalar_t__,int,TYPE_2__*) ;
 int GetObjectA (int ,int ,int *) ;
 int GetObjectW (int ,int ,int *) ;
 int ReleaseDC (int ,int ) ;
 int SetLastError (int ) ;
 int ok (int,char*,...) ;
 int ok_err (int ) ;
 int ok_long (int ,int) ;

void
Test_Dibsection(void)
{
    BITMAPINFO bmi = {{sizeof(BITMAPINFOHEADER), 10, 9, 1, 16, BI_RGB, 0, 10, 10, 0,0}};
    HBITMAP hBitmap;
    BITMAP bitmap;
    DIBSECTION dibsection;
    PVOID pData;
    HDC hDC;

    FillMemory(&dibsection, sizeof(DIBSECTION), 0x77);
    hDC = GetDC(0);
    hBitmap = CreateDIBSection(hDC, &bmi, DIB_RGB_COLORS, &pData, ((void*)0), 0);
    ok(hBitmap != 0, "CreateDIBSection failed with %ld, skipping tests.\n", GetLastError());
    if (!hBitmap) return;

    ok(GetObjectA((HANDLE)((UINT_PTR)hBitmap & 0x0000ffff), 0, ((void*)0)) == sizeof(BITMAP), "\n");
    ok(GetObjectW((HANDLE)((UINT_PTR)hBitmap & 0x0000ffff), 0, ((void*)0)) == sizeof(BITMAP), "\n");

    SetLastError(ERROR_SUCCESS);
    ok_long(GetObject(hBitmap, sizeof(DIBSECTION), ((void*)0)), sizeof(BITMAP));
    ok_long(GetObject(hBitmap, 0, ((void*)0)), sizeof(BITMAP));
    ok_long(GetObject(hBitmap, 5, ((void*)0)), sizeof(BITMAP));
    ok_long(GetObject(hBitmap, -5, ((void*)0)), sizeof(BITMAP));
    ok_long(GetObject(hBitmap, 0, &dibsection), 0);
    ok_long(GetObject(hBitmap, 5, &dibsection), 0);
    ok_long(GetObject(hBitmap, sizeof(BITMAP), &bitmap), sizeof(BITMAP));
    ok_long(GetObject(hBitmap, sizeof(BITMAP)+2, &bitmap), sizeof(BITMAP));
    ok_long(bitmap.bmType, 0);
    ok_long(bitmap.bmWidth, 10);
    ok_long(bitmap.bmHeight, 9);
    ok_long(bitmap.bmWidthBytes, 20);
    ok_long(bitmap.bmPlanes, 1);
    ok_long(bitmap.bmBitsPixel, 16);
    ok(bitmap.bmBits == pData, "\n");
    ok_long(GetObject(hBitmap, sizeof(DIBSECTION), &dibsection), sizeof(DIBSECTION));
    ok_long(GetObject(hBitmap, sizeof(DIBSECTION)+2, &dibsection), sizeof(DIBSECTION));
    ok_long(GetObject(hBitmap, -5, &dibsection), sizeof(DIBSECTION));
    ok_err(ERROR_SUCCESS);
    DeleteObject(hBitmap);
    ReleaseDC(0, hDC);
}
