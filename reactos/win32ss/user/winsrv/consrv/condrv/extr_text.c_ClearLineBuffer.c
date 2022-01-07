
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_11__ {int UnicodeChar; } ;
struct TYPE_13__ {int Attributes; TYPE_3__ Char; } ;
struct TYPE_10__ {scalar_t__ X; } ;
struct TYPE_9__ {int Y; } ;
struct TYPE_12__ {int ScreenDefaultAttrib; TYPE_2__ ScreenBufferSize; TYPE_1__ CursorPosition; } ;
typedef scalar_t__ SHORT ;
typedef TYPE_4__* PTEXTMODE_SCREEN_BUFFER ;
typedef TYPE_5__* PCHAR_INFO ;


 TYPE_5__* ConioCoordToPointer (TYPE_4__*,int ,int ) ;

VOID
ClearLineBuffer(PTEXTMODE_SCREEN_BUFFER Buff)
{
    PCHAR_INFO Ptr = ConioCoordToPointer(Buff, 0, Buff->CursorPosition.Y);
    SHORT Pos;

    for (Pos = 0; Pos < Buff->ScreenBufferSize.X; Pos++, Ptr++)
    {

        Ptr->Char.UnicodeChar = L' ';
        Ptr->Attributes = Buff->ScreenDefaultAttrib;
    }
}
