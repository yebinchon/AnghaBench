#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  InputEvents; } ;
struct TYPE_5__ {TYPE_1__ InputBuffer; } ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  TYPE_2__* PCONSOLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ConsoleInput ; 
 int Event ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC4(PCONSOLE Console)
{
    PLIST_ENTRY CurrentEntry;
    ConsoleInput* Event;

    while (!FUNC2(&Console->InputBuffer.InputEvents))
    {
        CurrentEntry = FUNC3(&Console->InputBuffer.InputEvents);
        Event = FUNC0(CurrentEntry, ConsoleInput, ListEntry);
        FUNC1(Event);
    }

    // CloseHandle(Console->InputBuffer.ActiveEvent);
}