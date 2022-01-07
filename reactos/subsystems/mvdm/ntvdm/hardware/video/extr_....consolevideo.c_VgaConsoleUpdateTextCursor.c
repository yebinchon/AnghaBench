
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int VOID ;
struct TYPE_6__ {int dwSize; int bVisible; } ;
struct TYPE_5__ {void* Y; void* X; } ;
typedef void* SHORT ;
typedef int DWORD ;
typedef TYPE_1__ COORD ;
typedef TYPE_2__ CONSOLE_CURSOR_INFO ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int DPRINT (char*,void*,void*) ;
 int FALSE ;
 int SetConsoleCursorInfo (int ,TYPE_2__*) ;
 int SetConsoleCursorPosition (int ,TYPE_1__) ;
 int TextConsoleBuffer ;

VOID
VgaConsoleUpdateTextCursor(BOOL CursorVisible,
                           BYTE CursorStart,
                           BYTE CursorEnd,
                           BYTE TextSize,
                           DWORD ScanlineSize,
                           WORD Location)
{
    COORD Position;
    CONSOLE_CURSOR_INFO CursorInfo;

    if (CursorStart < CursorEnd)
    {

        CursorInfo.bVisible = CursorVisible;
        CursorInfo.dwSize = (100 * (CursorEnd - CursorStart)) / TextSize;
    }
    else
    {

        CursorInfo.bVisible = FALSE;
        CursorInfo.dwSize = 1;
    }


    Position.X = (SHORT)(Location % ScanlineSize);
    Position.Y = (SHORT)(Location / ScanlineSize);

    DPRINT("VgaConsoleUpdateTextCursor: (X = %d ; Y = %d)\n", Position.X, Position.Y);


    SetConsoleCursorInfo(TextConsoleBuffer, &CursorInfo);
    SetConsoleCursorPosition(TextConsoleBuffer, Position);
}
