
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int lbStyle; int lbColor; } ;
typedef TYPE_1__ LOGBRUSH ;
typedef scalar_t__ HBRUSH ;
typedef int HANDLE ;


 scalar_t__ CreateSolidBrush (int ) ;
 int DeleteObject (scalar_t__) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int FillMemory (TYPE_1__*,int,int) ;
 scalar_t__ GDI_OBJECT_TYPE_BRUSH ;
 scalar_t__ GetLastError () ;
 int GetObject (scalar_t__,int,TYPE_1__*) ;
 int GetObjectA (int ,int ,int *) ;
 scalar_t__ GetObjectW (int ,int,TYPE_1__*) ;
 int RGB (int,int,int) ;
 int SetLastError (scalar_t__) ;
 int ok (int,char*,...) ;

void
Test_Brush(void)
{
    LOGBRUSH logbrush;
    HBRUSH hBrush;

    FillMemory(&logbrush, sizeof(LOGBRUSH), 0x77);
    hBrush = CreateSolidBrush(RGB(1,2,3));
    ok(hBrush != 0, "CreateSolidBrush failed, skipping tests.\n");
    if (!hBrush) return;

    SetLastError(ERROR_SUCCESS);
    ok(GetObjectA((HANDLE)GDI_OBJECT_TYPE_BRUSH, 0, ((void*)0)) == sizeof(LOGBRUSH), "\n");
    ok(GetObjectW((HANDLE)GDI_OBJECT_TYPE_BRUSH, 0, ((void*)0)) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, sizeof(WORD), ((void*)0)) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, 0, ((void*)0)) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, 5, ((void*)0)) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, -5, ((void*)0)) == sizeof(LOGBRUSH), "\n");


    ok(logbrush.lbStyle == 0x77777777, "\n");
    ok(GetObject(hBrush, 5, &logbrush) == sizeof(LOGBRUSH), "\n");
    ok(logbrush.lbStyle == 0, "\n");
    ok(logbrush.lbColor == 0x77777701, "\n");

    ok(GetObject(hBrush, sizeof(LOGBRUSH), &logbrush) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, sizeof(LOGBRUSH) - 1, &logbrush) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, 1, &logbrush) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, sizeof(LOGBRUSH)+2, &logbrush) == sizeof(LOGBRUSH), "\n");
    ok(GetObject(hBrush, -1, &logbrush) == sizeof(LOGBRUSH), "\n");


    ok(GetLastError() == ERROR_SUCCESS, "\n");
    DeleteObject(hBrush);

    ok(GetObjectW((HANDLE)GDI_OBJECT_TYPE_BRUSH, sizeof(LOGBRUSH), &logbrush) == 0, "\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", GetLastError());
}
