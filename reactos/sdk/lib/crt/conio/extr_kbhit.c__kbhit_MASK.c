#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bKeyDown; } ;
struct TYPE_7__ {TYPE_1__ KeyEvent; } ;
struct TYPE_8__ {scalar_t__ EventType; TYPE_2__ Event; } ;
typedef  TYPE_3__* PINPUT_RECORD ;
typedef  int /*<<< orphan*/  INPUT_RECORD ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CriticalSection ; 
 scalar_t__ CriticalSectionInitialized ; 
 int ENABLE_PROCESSED_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ KEY_EVENT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int,int*) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 scalar_t__ char_avail ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(void)
{
    PINPUT_RECORD InputRecord = NULL;
    DWORD NumberRead = 0;
    DWORD EventsRead = 0;
    DWORD RecordIndex = 0;
    DWORD BufferIndex = 0;
    HANDLE StdInputHandle = 0;
    DWORD ConsoleInputMode = 0;

    /* Attempt some thread safety */
    if (!CriticalSectionInitialized)
    {
        FUNC4(&CriticalSection, 0x80000400);
        CriticalSectionInitialized = TRUE;
    }

    FUNC0(&CriticalSection);

    if (char_avail)
    {
        FUNC5(&CriticalSection);
        return 1;
    }

    StdInputHandle = FUNC3(STD_INPUT_HANDLE);

    /* Turn off processed input so we get key modifiers as well */
    FUNC1(StdInputHandle, &ConsoleInputMode);

    FUNC7(StdInputHandle, ConsoleInputMode & ~ENABLE_PROCESSED_INPUT);

    /* Start the process */
    if (!FUNC2(StdInputHandle, &EventsRead))
    {
        FUNC5(&CriticalSection);
        return 0;
    }

    if (!EventsRead)
    {
        FUNC5(&CriticalSection);
        return 0;
    }

    if (!(InputRecord = (PINPUT_RECORD)FUNC9(EventsRead * sizeof(INPUT_RECORD))))
    {
        FUNC5(&CriticalSection);
        return 0;
    }

    if (!FUNC6(StdInputHandle, InputRecord, EventsRead, &NumberRead))
    {
        FUNC8(InputRecord);
        FUNC5(&CriticalSection);
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

    FUNC8(InputRecord);

    /* Restore console input mode */
    FUNC7(StdInputHandle, ConsoleInputMode);

    FUNC5(&CriticalSection);

    return BufferIndex;
}