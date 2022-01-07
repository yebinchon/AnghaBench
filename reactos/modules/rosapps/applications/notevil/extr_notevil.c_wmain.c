
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {int X; int Y; } ;
struct TYPE_9__ {int Right; int Left; int Bottom; int Top; } ;
struct TYPE_13__ {TYPE_2__ dwSize; TYPE_1__ srWindow; } ;
struct TYPE_12__ {int member_1; int member_0; } ;
struct TYPE_11__ {int QuadPart; } ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int DWORD ;
typedef TYPE_4__ COORD ;


 int CONSOLE_TEXTMODE_BUFFER ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateConsoleScreenBuffer (int ,int ,int *,int ,int *) ;
 scalar_t__ CreateWaitableTimer (int *,int ,int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FALSE ;
 int FillConsoleOutputAttribute (scalar_t__,int ,int,TYPE_4__,int *) ;
 int GENERIC_WRITE ;
 int GetConsoleScreenBufferInfo (int ,TYPE_6__*) ;
 char* GetLastError () ;
 int GetModuleHandle (int *) ;
 int GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MainLoop () ;
 int STD_OUTPUT_HANDLE ;
 scalar_t__ ScreenBuffer ;
 TYPE_6__ ScreenBufferInfo ;
 int SetConsoleActiveScreenBuffer (scalar_t__) ;
 int SetWaitableTimer (scalar_t__,TYPE_3__*,int,int *,int *,int ) ;
 scalar_t__ WaitableTimer ;
 char* app_name ;
 int myself ;
 int wprintf (char*,...) ;

int wmain(int argc, WCHAR* argv[])
{
    LARGE_INTEGER lint;
    DWORD Written;
    COORD Coord = { 0, 0 };

    myself = GetModuleHandle(((void*)0));

    GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE),
                               &ScreenBufferInfo);
    ScreenBufferInfo.dwSize.X = ScreenBufferInfo.srWindow.Right - ScreenBufferInfo.srWindow.Left + 1;
    ScreenBufferInfo.dwSize.Y = ScreenBufferInfo.srWindow.Bottom - ScreenBufferInfo.srWindow.Top + 1;
    ScreenBuffer = CreateConsoleScreenBuffer(GENERIC_WRITE,
                                             0,
                                             ((void*)0),
                                             CONSOLE_TEXTMODE_BUFFER,
                                             ((void*)0));
    if (ScreenBuffer == INVALID_HANDLE_VALUE)
    {
        wprintf(L"%s: could not create a new screen buffer\n", app_name);
        return EXIT_FAILURE;
    }


    FillConsoleOutputAttribute(ScreenBuffer,
                               0,
                               ScreenBufferInfo.dwSize.X * ScreenBufferInfo.dwSize.Y,
                               Coord,
                               &Written);

    WaitableTimer = CreateWaitableTimer(((void*)0), FALSE, ((void*)0));
    if (WaitableTimer == INVALID_HANDLE_VALUE)
    {
        wprintf(L"CreateWaitabletimer() failed\n");
        return 1;
    }
    lint.QuadPart = -2000000;
    if (!SetWaitableTimer(WaitableTimer, &lint, 200, ((void*)0), ((void*)0), FALSE))
    {
        wprintf(L"SetWaitableTimer() failed: 0x%lx\n", GetLastError());
        return 2;
    }
    SetConsoleActiveScreenBuffer(ScreenBuffer);
    MainLoop();
    CloseHandle(ScreenBuffer);
    return EXIT_SUCCESS;
}
