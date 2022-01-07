
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int VOID ;
struct TYPE_6__ {int AsciiChar; scalar_t__ UnicodeChar; } ;
struct TYPE_7__ {TYPE_1__ uChar; } ;
struct TYPE_8__ {TYPE_2__ KeyEvent; } ;
struct TYPE_9__ {scalar_t__ EventType; TYPE_3__ Event; } ;
typedef TYPE_4__* PINPUT_RECORD ;
typedef int PCONSOLE ;


 int ConsoleInputUnicodeToAnsiChar (int ,int *,scalar_t__*) ;
 scalar_t__ KEY_EVENT ;

__attribute__((used)) static VOID
ConioInputEventToAnsi(PCONSOLE Console, PINPUT_RECORD InputEvent)
{
    if (InputEvent->EventType == KEY_EVENT)
    {
        WCHAR UnicodeChar = InputEvent->Event.KeyEvent.uChar.UnicodeChar;
        InputEvent->Event.KeyEvent.uChar.UnicodeChar = 0;
        ConsoleInputUnicodeToAnsiChar(Console,
                                      &InputEvent->Event.KeyEvent.uChar.AsciiChar,
                                      &UnicodeChar);
    }
}
