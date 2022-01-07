
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int X; int Y; } ;
struct TYPE_15__ {int X; int Y; } ;
struct TYPE_20__ {TYPE_2__ ViewSize; TYPE_1__ ViewOrigin; } ;
struct TYPE_19__ {TYPE_6__* ActiveBuffer; } ;
struct TYPE_18__ {scalar_t__ NumEntries; } ;
struct TYPE_17__ {int * PopupInputRoutine; } ;
typedef int SHORT ;
typedef int PUNICODE_STRING ;
typedef TYPE_3__* PPOPUP_WINDOW ;
typedef TYPE_4__* PHISTORY_BUFFER ;
typedef TYPE_5__* PCONSRV_CONSOLE ;
typedef TYPE_6__* PCONSOLE_SCREEN_BUFFER ;


 TYPE_3__* CreatePopupWindow (TYPE_5__*,TYPE_6__*,int,int,int,int) ;
 scalar_t__ GetType (TYPE_6__*) ;
 TYPE_4__* HistoryCurrentBuffer (TYPE_5__*,int ) ;
 scalar_t__ TEXTMODE_BUFFER ;

PPOPUP_WINDOW
HistoryDisplayCurrentHistory(PCONSRV_CONSOLE Console,
                             PUNICODE_STRING ExeName)
{
    PCONSOLE_SCREEN_BUFFER ActiveBuffer;
    PPOPUP_WINDOW Popup;

    SHORT xLeft, yTop;
    SHORT Width, Height;

    PHISTORY_BUFFER Hist = HistoryCurrentBuffer(Console, ExeName);

    if (!Hist) return ((void*)0);
    if (Hist->NumEntries == 0) return ((void*)0);

    if (GetType(Console->ActiveBuffer) != TEXTMODE_BUFFER) return ((void*)0);
    ActiveBuffer = Console->ActiveBuffer;

    Width = 40;
    Height = 10;


    xLeft = ActiveBuffer->ViewOrigin.X + (ActiveBuffer->ViewSize.X - Width ) / 2;
    yTop = ActiveBuffer->ViewOrigin.Y + (ActiveBuffer->ViewSize.Y - Height) / 2;


    Popup = CreatePopupWindow(Console, ActiveBuffer,
                              xLeft, yTop, Width, Height);
    if (Popup == ((void*)0)) return ((void*)0);

    Popup->PopupInputRoutine = ((void*)0);

    return Popup;
}
