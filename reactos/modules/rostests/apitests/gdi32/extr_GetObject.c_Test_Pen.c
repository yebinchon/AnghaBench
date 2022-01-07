
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lopnStyle; } ;
typedef TYPE_1__ LOGPEN ;
typedef scalar_t__ HPEN ;
typedef int HANDLE ;
typedef int BITMAP ;


 scalar_t__ CreatePen (scalar_t__,int,int ) ;
 int DeleteObject (scalar_t__) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int FillMemory (TYPE_1__*,int,int) ;
 scalar_t__ GDI_OBJECT_TYPE_PEN ;
 scalar_t__ GetLastError () ;
 int GetObject (scalar_t__,int,TYPE_1__*) ;
 int GetObjectA (int ,int ,int *) ;
 scalar_t__ GetObjectW (int ,int,TYPE_1__*) ;
 scalar_t__ PS_SOLID ;
 int RGB (int,int,int) ;
 int SetLastError (int ) ;
 int ok (int,char*,...) ;

void
Test_Pen(void)
{
    LOGPEN logpen;
    HPEN hPen;

    FillMemory(&logpen, sizeof(LOGPEN), 0x77);
    hPen = CreatePen(PS_SOLID, 3, RGB(4,5,6));
    ok(hPen != 0, "CreatePen failed, skipping tests.\n");
    if (!hPen) return;
    SetLastError(ERROR_SUCCESS);
    ok(GetObjectA((HANDLE)GDI_OBJECT_TYPE_PEN, 0, ((void*)0)) == sizeof(LOGPEN), "\n");
    ok(GetObjectW((HANDLE)GDI_OBJECT_TYPE_PEN, 0, ((void*)0)) == sizeof(LOGPEN), "\n");
    ok(GetObject(hPen, sizeof(BITMAP), ((void*)0)) == sizeof(LOGPEN), "\n");
    ok(GetObject(hPen, 0, ((void*)0)) == sizeof(LOGPEN), "\n");
    ok(GetObject(hPen, 5, ((void*)0)) == sizeof(LOGPEN), "\n");
    ok(GetObject(hPen, -5, ((void*)0)) == sizeof(LOGPEN), "\n");
    ok(GetObject(hPen, sizeof(LOGPEN), &logpen) == sizeof(LOGPEN), "\n");
    ok(GetObject(hPen, sizeof(LOGPEN)-1, &logpen) == 0, "\n");
    ok(GetObject(hPen, sizeof(LOGPEN)+2, &logpen) == sizeof(LOGPEN), "\n");
    ok(GetObject(hPen, 0, &logpen) == 0, "\n");
    ok(GetObject(hPen, -5, &logpen) == sizeof(LOGPEN), "\n");



    ok(logpen.lopnStyle == PS_SOLID, "\n");

    ok(GetObjectW((HANDLE)GDI_OBJECT_TYPE_PEN, sizeof(LOGPEN), &logpen) == 0, "\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %ld\n", GetLastError());

    DeleteObject(hPen);
}
