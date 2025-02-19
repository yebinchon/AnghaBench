
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ Right; scalar_t__ Left; scalar_t__ Bottom; scalar_t__ Top; } ;
struct TYPE_9__ {TYPE_3__ srWindow; } ;
struct TYPE_8__ {scalar_t__ X; scalar_t__ Y; } ;
typedef TYPE_1__ COORD ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 scalar_t__ SRHEIGHT (TYPE_3__) ;
 scalar_t__ SRWIDTH (TYPE_3__) ;
 int SetConsoleWindowInfo (int ,scalar_t__,TYPE_3__*) ;
 scalar_t__ TRUE ;
 int g_hConOut ;

__attribute__((used)) static BOOL
FitConsoleWindow(
    COORD dwBufferSize,
    BOOL WantAdjust)
{
    CONSOLE_SCREEN_BUFFER_INFO csbi;
    COORD dwWindowSize;
    BOOL NeedAdjust = FALSE;

    if (GetConsoleScreenBufferInfo(g_hConOut, &csbi))
    {





 if (csbi.srWindow.Right >= dwBufferSize.X)
 {
     dwWindowSize.X = SRWIDTH(csbi.srWindow);
     if (dwWindowSize.X > dwBufferSize.X)
  dwWindowSize.X = dwBufferSize.X;
     csbi.srWindow.Right = dwBufferSize.X - 1;
     csbi.srWindow.Left = dwBufferSize.X - dwWindowSize.X;
     NeedAdjust = TRUE;
 }
 if (csbi.srWindow.Bottom >= dwBufferSize.Y)
 {
     dwWindowSize.Y = SRHEIGHT(csbi.srWindow);
     if (dwWindowSize.Y > dwBufferSize.Y)
  dwWindowSize.Y = dwBufferSize.Y;
     csbi.srWindow.Bottom = dwBufferSize.Y - 1;
     csbi.srWindow.Top = dwBufferSize.Y - dwWindowSize.Y;
     NeedAdjust = TRUE;
 }
 if (NeedAdjust && WantAdjust)
 {
     if (!SetConsoleWindowInfo(g_hConOut, TRUE, &csbi.srWindow))
  return FALSE;
 }
 return TRUE;
    }

    return FALSE;
}
