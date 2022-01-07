
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HANDLE ;
typedef int DWORD ;


 int ENABLE_MOUSE_INPUT ;
 scalar_t__ GetConsoleMode (int ,int *) ;
 scalar_t__ MousePresent ;
 int SetConsoleMode (int ,int ) ;

__attribute__((used)) static VOID EnableExtraHardware(HANDLE ConsoleInput)
{
    DWORD ConInMode;

    if (GetConsoleMode(ConsoleInput, &ConInMode))
    {
            ConInMode |= ENABLE_MOUSE_INPUT;
        SetConsoleMode(ConsoleInput, ConInMode);
    }
}
