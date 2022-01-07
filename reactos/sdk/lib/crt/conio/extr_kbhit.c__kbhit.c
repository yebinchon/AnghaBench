
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bKeyDown; } ;
struct TYPE_7__ {TYPE_1__ KeyEvent; } ;
struct TYPE_8__ {scalar_t__ EventType; TYPE_2__ Event; } ;
typedef TYPE_3__* PINPUT_RECORD ;
typedef int INPUT_RECORD ;
typedef int HANDLE ;
typedef int DWORD ;


 int CriticalSection ;
 scalar_t__ CriticalSectionInitialized ;
 int ENABLE_PROCESSED_INPUT ;
 int EnterCriticalSection (int *) ;
 int GetConsoleMode (int ,int*) ;
 int GetNumberOfConsoleInputEvents (int ,int*) ;
 int GetStdHandle (int ) ;
 int InitializeCriticalSectionAndSpinCount (int *,int) ;
 scalar_t__ KEY_EVENT ;
 int LeaveCriticalSection (int *) ;
 int PeekConsoleInput (int ,TYPE_3__*,int,int*) ;
 int STD_INPUT_HANDLE ;
 int SetConsoleMode (int ,int) ;
 scalar_t__ TRUE ;
 scalar_t__ char_avail ;
 int free (TYPE_3__*) ;
 scalar_t__ malloc (int) ;

int _kbhit(void)
{
    PINPUT_RECORD InputRecord = ((void*)0);
    DWORD NumberRead = 0;
    DWORD EventsRead = 0;
    DWORD RecordIndex = 0;
    DWORD BufferIndex = 0;
    HANDLE StdInputHandle = 0;
    DWORD ConsoleInputMode = 0;


    if (!CriticalSectionInitialized)
    {
        InitializeCriticalSectionAndSpinCount(&CriticalSection, 0x80000400);
        CriticalSectionInitialized = TRUE;
    }

    EnterCriticalSection(&CriticalSection);

    if (char_avail)
    {
        LeaveCriticalSection(&CriticalSection);
        return 1;
    }

    StdInputHandle = GetStdHandle(STD_INPUT_HANDLE);


    GetConsoleMode(StdInputHandle, &ConsoleInputMode);

    SetConsoleMode(StdInputHandle, ConsoleInputMode & ~ENABLE_PROCESSED_INPUT);


    if (!GetNumberOfConsoleInputEvents(StdInputHandle, &EventsRead))
    {
        LeaveCriticalSection(&CriticalSection);
        return 0;
    }

    if (!EventsRead)
    {
        LeaveCriticalSection(&CriticalSection);
        return 0;
    }

    if (!(InputRecord = (PINPUT_RECORD)malloc(EventsRead * sizeof(INPUT_RECORD))))
    {
        LeaveCriticalSection(&CriticalSection);
        return 0;
    }

    if (!PeekConsoleInput(StdInputHandle, InputRecord, EventsRead, &NumberRead))
    {
        free(InputRecord);
        LeaveCriticalSection(&CriticalSection);
        return 0;
    }

    for (RecordIndex = 0; RecordIndex < NumberRead; RecordIndex++)
    {
        if (InputRecord[RecordIndex].EventType == KEY_EVENT &&
            InputRecord[RecordIndex].Event.KeyEvent.bKeyDown)
        {
            BufferIndex = 1;
            break;
        }
    }

    free(InputRecord);


    SetConsoleMode(StdInputHandle, ConsoleInputMode);

    LeaveCriticalSection(&CriticalSection);

    return BufferIndex;
}
