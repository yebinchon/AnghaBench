
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_10__ {int X; scalar_t__ Y; } ;
struct TYPE_15__ {TYPE_1__ dwSize; } ;
struct TYPE_14__ {int X; scalar_t__ Y; } ;
struct TYPE_13__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_12__ {int * Buffer; TYPE_6__ BufferSize; TYPE_9__ Info; void* IsValid; } ;
struct TYPE_11__ {int Right; scalar_t__ Bottom; scalar_t__ Top; scalar_t__ Left; } ;
typedef TYPE_2__ SMALL_RECT ;
typedef int * PCHAR_INFO ;
typedef int DWORD ;
typedef TYPE_3__ ConsoleBuffer ;
typedef TYPE_4__ COORD ;
typedef int CHAR_INFO ;
typedef void* BOOL ;


 void* FALSE ;
 int GetConsoleScreenBufferInfo (int ,TYPE_9__*) ;
 int ReadConsoleOutput (int ,int *,TYPE_6__,TYPE_4__,TYPE_2__*) ;
 void* TRUE ;
 scalar_t__ alloc (int) ;
 int g_hConOut ;
 int vim_free (int *) ;

__attribute__((used)) static BOOL
SaveConsoleBuffer(
    ConsoleBuffer *cb)
{
    DWORD NumCells;
    COORD BufferCoord;
    SMALL_RECT ReadRegion;
    WORD Y, Y_incr;

    if (cb == ((void*)0))
 return FALSE;

    if (!GetConsoleScreenBufferInfo(g_hConOut, &cb->Info))
    {
 cb->IsValid = FALSE;
 return FALSE;
    }
    cb->IsValid = TRUE;






    if (!cb->IsValid || cb->Buffer == ((void*)0) ||
     cb->BufferSize.X != cb->Info.dwSize.X ||
     cb->BufferSize.Y != cb->Info.dwSize.Y)
    {
 cb->BufferSize.X = cb->Info.dwSize.X;
 cb->BufferSize.Y = cb->Info.dwSize.Y;
 NumCells = cb->BufferSize.X * cb->BufferSize.Y;
 vim_free(cb->Buffer);
 cb->Buffer = (PCHAR_INFO)alloc(NumCells * sizeof(CHAR_INFO));
 if (cb->Buffer == ((void*)0))
     return FALSE;
    }
    BufferCoord.X = 0;
    ReadRegion.Left = 0;
    ReadRegion.Right = cb->Info.dwSize.X - 1;
    Y_incr = 12000 / cb->Info.dwSize.X;
    for (Y = 0; Y < cb->BufferSize.Y; Y += Y_incr)
    {



 BufferCoord.Y = Y;






 ReadRegion.Top = Y;
 ReadRegion.Bottom = Y + Y_incr - 1;
 if (!ReadConsoleOutput(g_hConOut,
  cb->Buffer,
  cb->BufferSize,
  BufferCoord,
  &ReadRegion))
 {
     vim_free(cb->Buffer);
     cb->Buffer = ((void*)0);
     return FALSE;
 }
    }

    return TRUE;
}
