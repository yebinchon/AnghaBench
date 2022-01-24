#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_3__ {int EventType; scalar_t__ EventState; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ EVENT_BASIC_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  EventBasicInformation ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HANDLE Event;
    HANDLE Event2;
    NTSTATUS status;
    UNICODE_STRING str;
    OBJECT_ATTRIBUTES attr;
    EVENT_BASIC_INFORMATION info;
    static const WCHAR eventName[] = {'\\','B','a','s','e','N','a','m','e','d','O','b','j','e','c','t','s','\\','t','e','s','t','E','v','e','n','t',0};

    FUNC7(&str, eventName);
    FUNC0(&attr, &str, 0, 0, NULL);

    status = FUNC3(&Event, GENERIC_ALL, &attr, 1, 0);
    FUNC1( status == STATUS_SUCCESS, "NtCreateEvent failed %08x\n", status );

    status = FUNC5(Event, NULL);
    FUNC1( status == STATUS_SUCCESS, "NtPulseEvent failed %08x\n", status );

    status = FUNC6(Event, EventBasicInformation, &info, sizeof(info), NULL);
    FUNC1( status == STATUS_SUCCESS, "NtQueryEvent failed %08x\n", status );
    FUNC1( info.EventType == 1 && info.EventState == 0,
        "NtQueryEvent failed, expected 1 0, got %d %d\n", info.EventType, info.EventState );

    status = FUNC4(&Event2, GENERIC_ALL, &attr);
    FUNC1( status == STATUS_SUCCESS, "NtOpenEvent failed %08x\n", status );

    FUNC2(Event);

    status = FUNC6(Event2, EventBasicInformation, &info, sizeof(info), NULL);
    FUNC1( status == STATUS_SUCCESS, "NtQueryEvent failed %08x\n", status );
    FUNC1( info.EventType == 1 && info.EventState == 0,
        "NtQueryEvent failed, expected 1 0, got %d %d\n", info.EventType, info.EventState );

    FUNC2(Event2);
}