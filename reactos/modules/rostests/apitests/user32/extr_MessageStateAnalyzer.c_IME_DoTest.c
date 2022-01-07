
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wc ;
struct TYPE_4__ {int style; char const* lpszClassName; scalar_t__ hbrBackground; int hCursor; int hIcon; int hInstance; int lpfnWndProc; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int MSG ;
typedef int HWND ;
typedef scalar_t__ HBRUSH ;


 int ARRAYSIZE (int ) ;
 scalar_t__ COLOR_3DFACE ;
 int CS_DBLCLKS ;
 int CS_HREDRAW ;
 int CS_VREDRAW ;
 int CreateWindowA (char const*,char const*,int ,int ,int ,int ,int ,int *,int *,int ,int *) ;
 int DispatchMessageA (int *) ;
 int DoFinish () ;
 int DoInitialize (int ,int ) ;
 scalar_t__ GetMessageA (int *,int *,int ,int ) ;
 int GetModuleHandleA (int *) ;
 int GetModuleHandleW (int *) ;
 int HEIGHT ;
 int IDC_ARROW ;
 int IDI_APPLICATION ;
 int LoadCursor (int *,int ) ;
 int LoadIcon (int *,int ) ;
 int RegisterClassA (TYPE_1__*) ;
 int TRUE ;
 int TranslateMessage (int *) ;
 int UnregisterClassA (char const*,int ) ;
 int WIDTH ;
 int WS_OVERLAPPEDWINDOW ;
 int WindowProc ;
 int ZeroMemory (TYPE_1__*,int) ;
 int ok_int (int ,int ) ;
 int s_IMEStages ;
 int skip (char*) ;
 int trace (char*) ;

__attribute__((used)) static void IME_DoTest(void)
{
    WNDCLASSA wc;
    HWND hwnd;
    MSG msg;
    static const char s_szName[] = "MessageStateAnalyzerIME";

    trace("IME_DoTest\n");
    DoInitialize(s_IMEStages, ARRAYSIZE(s_IMEStages));


    ZeroMemory(&wc, sizeof(wc));
    wc.style = CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS;
    wc.lpfnWndProc = WindowProc;
    wc.hInstance = GetModuleHandleA(((void*)0));
    wc.hIcon = LoadIcon(((void*)0), IDI_APPLICATION);
    wc.hCursor = LoadCursor(((void*)0), IDC_ARROW);
    wc.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1);
    wc.lpszClassName = s_szName;
    if (!RegisterClassA(&wc))
    {
        skip("RegisterClassW failed.\n");
        return;
    }


    hwnd = CreateWindowA(s_szName, s_szName, WS_OVERLAPPEDWINDOW,
                         0, 0, WIDTH, HEIGHT, ((void*)0), ((void*)0),
                         GetModuleHandleW(((void*)0)), ((void*)0));
    if (!hwnd)
    {
        skip("CreateWindowW failed.\n");
        return;
    }


    while (GetMessageA(&msg, ((void*)0), 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }

    ok_int(UnregisterClassA(s_szName, GetModuleHandleA(((void*)0))), TRUE);

    DoFinish();
}
