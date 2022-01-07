
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _file; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ENABLE_ECHO_INPUT ;
 int ENABLE_LINE_INPUT ;
 scalar_t__ GetConsoleMode (scalar_t__,int*) ;
 int ReadConsoleA (scalar_t__,char*,int,int*,int *) ;
 int SetConsoleMode (scalar_t__,int) ;
 scalar_t__ _get_osfhandle (int ) ;
 scalar_t__ char_avail ;
 TYPE_1__* stdin ;
 char ungot_char ;

int _getch(void)
{
    DWORD NumberOfCharsRead = 0;
    char c;
    HANDLE ConsoleHandle;
    BOOL RestoreMode;
    DWORD ConsoleMode;

    if (char_avail) {
        c = ungot_char;
        char_avail = 0;
    } else {






        ConsoleHandle = (HANDLE) _get_osfhandle(stdin->_file);
        RestoreMode = GetConsoleMode(ConsoleHandle, &ConsoleMode) &&
                      (0 != (ConsoleMode &
                             (ENABLE_ECHO_INPUT | ENABLE_LINE_INPUT)));
        if (RestoreMode) {
            SetConsoleMode(ConsoleHandle,
                           ConsoleMode & (~ (ENABLE_ECHO_INPUT | ENABLE_LINE_INPUT)));
        }
        ReadConsoleA((HANDLE)_get_osfhandle(stdin->_file),
               &c,
               1,
               &NumberOfCharsRead,
               ((void*)0));
        if (RestoreMode) {
            SetConsoleMode(ConsoleHandle, ConsoleMode);
        }
    }
    if (c == 10)
        c = 13;
    return c;
}
