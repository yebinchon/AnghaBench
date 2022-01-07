
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lpszClassName; int * lpszMenuName; int hbrBackground; int hCursor; scalar_t__ hIcon; int hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; scalar_t__ style; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPCSTR ;
typedef int BOOL ;


 int DefWindowProcA ;
 int GetLastError () ;
 int GetModuleHandleA (int ) ;
 int GetStockObject (int ) ;
 scalar_t__ IDC_ARROW ;
 int LoadCursorA (int ,int ) ;
 int RegisterClassA (TYPE_1__*) ;
 int WHITE_BRUSH ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static BOOL dsm_RegisterWindowClasses(void)
{
    WNDCLASSA cls;
    BOOL rc;

    cls.style = 0;
    cls.lpfnWndProc = DefWindowProcA;
    cls.cbClsExtra = 0;
    cls.cbWndExtra = 0;
    cls.hInstance = GetModuleHandleA(0);
    cls.hIcon = 0;
    cls.hCursor = LoadCursorA(0, (LPCSTR)IDC_ARROW);
    cls.hbrBackground = GetStockObject(WHITE_BRUSH);
    cls.lpszMenuName = ((void*)0);
    cls.lpszClassName = "TWAIN_dsm_class";

    rc = RegisterClassA(&cls);
    ok(rc, "RegisterClassA failed: le=%u\n", GetLastError());
    return rc;
}
