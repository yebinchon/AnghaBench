
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lpszClassName; int * lpszMenuName; void* hbrBackground; void* hCursor; scalar_t__ hIcon; void* hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; void* style; } ;
typedef TYPE_1__ WNDCLASSW ;
struct TYPE_6__ {char* lpszClassName; int * lpszMenuName; void* hbrBackground; void* hCursor; scalar_t__ hIcon; void* hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; void* style; } ;
typedef TYPE_2__ WNDCLASSA ;
typedef int LPCSTR ;
typedef int BOOL ;


 void* CS_DBLCLKS ;
 int FALSE ;
 void* GetModuleHandleA (int ) ;
 void* GetStockObject (int ) ;
 scalar_t__ IDC_ARROW ;
 void* LoadCursorA (int ,int ) ;
 int RegisterClassA (TYPE_2__*) ;
 int RegisterClassW (TYPE_1__*) ;
 int TRUE ;
 int WHITE_BRUSH ;
 int main_window_procA ;
 int main_window_procW ;
 int mainclassW ;
 int tool_window_procA ;

__attribute__((used)) static BOOL RegisterWindowClasses(void)
{
    WNDCLASSW clsW;
    WNDCLASSA cls;

    cls.style = CS_DBLCLKS;
    cls.lpfnWndProc = main_window_procA;
    cls.cbClsExtra = 0;
    cls.cbWndExtra = 0;
    cls.hInstance = GetModuleHandleA(0);
    cls.hIcon = 0;
    cls.hCursor = LoadCursorA(0, (LPCSTR)IDC_ARROW);
    cls.hbrBackground = GetStockObject(WHITE_BRUSH);
    cls.lpszMenuName = ((void*)0);
    cls.lpszClassName = "MainWindowClass";

    if(!RegisterClassA(&cls)) return FALSE;

    clsW.style = CS_DBLCLKS;
    clsW.lpfnWndProc = main_window_procW;
    clsW.cbClsExtra = 0;
    clsW.cbWndExtra = 0;
    clsW.hInstance = GetModuleHandleA(0);
    clsW.hIcon = 0;
    clsW.hCursor = LoadCursorA(0, (LPCSTR)IDC_ARROW);
    clsW.hbrBackground = GetStockObject(WHITE_BRUSH);
    clsW.lpszMenuName = ((void*)0);
    clsW.lpszClassName = mainclassW;

    if(!RegisterClassW(&clsW)) return FALSE;

    cls.style = 0;
    cls.lpfnWndProc = tool_window_procA;
    cls.cbClsExtra = 0;
    cls.cbWndExtra = 0;
    cls.hInstance = GetModuleHandleA(0);
    cls.hIcon = 0;
    cls.hCursor = LoadCursorA(0, (LPCSTR)IDC_ARROW);
    cls.hbrBackground = GetStockObject(WHITE_BRUSH);
    cls.lpszMenuName = ((void*)0);
    cls.lpszClassName = "ToolWindowClass";

    if(!RegisterClassA(&cls)) return FALSE;

    return TRUE;
}
