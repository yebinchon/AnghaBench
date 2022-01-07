
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_11__ {scalar_t__ Top; scalar_t__ Bottom; scalar_t__ Right; scalar_t__ Left; } ;
struct TYPE_8__ {scalar_t__ Y; } ;
struct TYPE_9__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_10__ {scalar_t__ VirtualY; TYPE_1__ CursorPosition; TYPE_2__ ScreenBufferSize; } ;
typedef int * PUINT ;
typedef TYPE_3__* PTEXTMODE_SCREEN_BUFFER ;
typedef TYPE_4__* PSMALL_RECT ;


 int ClearLineBuffer (TYPE_3__*) ;

__attribute__((used)) static VOID
ConioNextLine(PTEXTMODE_SCREEN_BUFFER Buff, PSMALL_RECT UpdateRect, PUINT ScrolledLines)
{

    if (++Buff->CursorPosition.Y == Buff->ScreenBufferSize.Y)
    {
        Buff->CursorPosition.Y--;
        if (++Buff->VirtualY == Buff->ScreenBufferSize.Y)
        {
            Buff->VirtualY = 0;
        }
        (*ScrolledLines)++;
        ClearLineBuffer(Buff);
        if (UpdateRect->Top != 0)
        {
            UpdateRect->Top--;
        }
    }
    UpdateRect->Left = 0;
    UpdateRect->Right = Buff->ScreenBufferSize.X - 1;
    UpdateRect->Bottom = Buff->CursorPosition.Y;
}
