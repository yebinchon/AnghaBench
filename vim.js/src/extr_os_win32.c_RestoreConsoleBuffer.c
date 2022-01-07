
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_13__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_10__ {TYPE_7__ dwSize; int srWindow; int dwCursorPosition; int wAttributes; } ;
struct TYPE_12__ {int BufferSize; int * Buffer; TYPE_1__ Info; int IsValid; } ;
struct TYPE_11__ {scalar_t__ Bottom; scalar_t__ Right; scalar_t__ Top; scalar_t__ Left; } ;
typedef TYPE_2__ SMALL_RECT ;
typedef TYPE_3__ ConsoleBuffer ;
typedef TYPE_4__ COORD ;
typedef scalar_t__ BOOL ;


 int ClearConsoleBuffer (int ) ;
 scalar_t__ FALSE ;
 int FitConsoleWindow (TYPE_7__,scalar_t__) ;
 int SetConsoleCursorPosition (int ,int ) ;
 int SetConsoleScreenBufferSize (int ,TYPE_7__) ;
 int SetConsoleTextAttribute (int ,int ) ;
 int SetConsoleWindowInfo (int ,scalar_t__,int *) ;
 scalar_t__ TRUE ;
 int WriteConsoleOutput (int ,int *,int ,TYPE_4__,TYPE_2__*) ;
 int g_hConOut ;

__attribute__((used)) static BOOL
RestoreConsoleBuffer(
    ConsoleBuffer *cb,
    BOOL RestoreScreen)
{
    COORD BufferCoord;
    SMALL_RECT WriteRegion;

    if (cb == ((void*)0) || !cb->IsValid)
 return FALSE;






    if (RestoreScreen)
 ClearConsoleBuffer(cb->Info.wAttributes);

    FitConsoleWindow(cb->Info.dwSize, TRUE);
    if (!SetConsoleScreenBufferSize(g_hConOut, cb->Info.dwSize))
 return FALSE;
    if (!SetConsoleTextAttribute(g_hConOut, cb->Info.wAttributes))
 return FALSE;

    if (!RestoreScreen)
    {



 return TRUE;
    }

    if (!SetConsoleCursorPosition(g_hConOut, cb->Info.dwCursorPosition))
 return FALSE;
    if (!SetConsoleWindowInfo(g_hConOut, TRUE, &cb->Info.srWindow))
 return FALSE;




    if (cb->Buffer != ((void*)0))
    {
 BufferCoord.X = 0;
 BufferCoord.Y = 0;
 WriteRegion.Left = 0;
 WriteRegion.Top = 0;
 WriteRegion.Right = cb->Info.dwSize.X - 1;
 WriteRegion.Bottom = cb->Info.dwSize.Y - 1;
 if (!WriteConsoleOutput(g_hConOut,
  cb->Buffer,
  cb->BufferSize,
  BufferCoord,
  &WriteRegion))
 {
     return FALSE;
 }
    }

    return TRUE;
}
