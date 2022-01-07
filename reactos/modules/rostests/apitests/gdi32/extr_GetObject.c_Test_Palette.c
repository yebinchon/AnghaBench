
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT_PTR ;
struct TYPE_5__ {int palVersion; int palNumEntries; TYPE_1__* palPalEntry; } ;
struct TYPE_4__ {int peFlags; scalar_t__ peBlue; scalar_t__ peGreen; scalar_t__ peRed; } ;
typedef TYPE_2__ LOGPALETTE ;
typedef scalar_t__ HPALETTE ;
typedef int HANDLE ;


 scalar_t__ CreatePalette (TYPE_2__*) ;
 int DeleteObject (scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int FillMemory (int *,int,int) ;
 scalar_t__ GDI_OBJECT_TYPE_PALETTE ;
 scalar_t__ GetLastError () ;
 int GetObject (scalar_t__,int,int *) ;
 int GetObjectA (int ,int ,int *) ;
 int GetObjectW (int ,int,int *) ;
 int PC_EXPLICIT ;
 int SetLastError (scalar_t__) ;
 int ok (int,char*) ;

void
Test_Palette(void)
{
    LOGPALETTE logpal;
    HPALETTE hPalette;
    WORD wPalette;

    FillMemory(&wPalette, sizeof(WORD), 0x77);
    logpal.palVersion = 0x0300;
    logpal.palNumEntries = 1;
    logpal.palPalEntry[0].peRed = 0;
    logpal.palPalEntry[0].peGreen = 0;
    logpal.palPalEntry[0].peBlue = 0;
    logpal.palPalEntry[0].peFlags = PC_EXPLICIT;
    hPalette = CreatePalette(&logpal);
    ok(hPalette != 0, "CreatePalette failed, skipping tests.\n");
    if (!hPalette) return;

    ok(GetObjectA((HANDLE)((UINT_PTR)hPalette & 0x0000ffff), 0, ((void*)0)) == sizeof(WORD), "\n");
    ok(GetObjectW((HANDLE)((UINT_PTR)hPalette & 0x0000ffff), 0, ((void*)0)) == sizeof(WORD), "\n");

    SetLastError(ERROR_SUCCESS);
    ok(GetObjectA((HANDLE)GDI_OBJECT_TYPE_PALETTE, 0, ((void*)0)) == sizeof(WORD), "\n");
    ok(GetObjectW((HANDLE)GDI_OBJECT_TYPE_PALETTE, 0, ((void*)0)) == sizeof(WORD), "\n");
    ok(GetObject(hPalette, sizeof(WORD), ((void*)0)) == sizeof(WORD), "\n");
    ok(GetObject(hPalette, 0, ((void*)0)) == sizeof(WORD), "\n");
    ok(GetObject(hPalette, 5, ((void*)0)) == sizeof(WORD), "\n");
    ok(GetObject(hPalette, -5, ((void*)0)) == sizeof(WORD), "\n");
    ok(GetObject(hPalette, sizeof(WORD), &wPalette) == sizeof(WORD), "\n");
    ok(GetObject(hPalette, sizeof(WORD)+2, &wPalette) == sizeof(WORD), "\n");
    ok(GetObject(hPalette, 0, &wPalette) == 0, "\n");
    ok(GetObject(hPalette, 1, &wPalette) == 0, "\n");
    ok(GetObject(hPalette, -1, &wPalette) == sizeof(WORD), "\n");
    ok(GetLastError() == ERROR_SUCCESS, "\n");
    DeleteObject(hPalette);
    ok(GetObjectW((HANDLE)GDI_OBJECT_TYPE_PALETTE, sizeof(WORD), &wPalette) == 0, "\n");
    ok(GetLastError() == ERROR_SUCCESS, "\n");

}
