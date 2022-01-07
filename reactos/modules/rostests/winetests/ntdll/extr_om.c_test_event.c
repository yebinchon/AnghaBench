
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
typedef char WCHAR ;
typedef int UNICODE_STRING ;
struct TYPE_3__ {int EventType; scalar_t__ EventState; } ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef TYPE_1__ EVENT_BASIC_INFORMATION ;


 int EventBasicInformation ;
 int GENERIC_ALL ;
 int InitializeObjectAttributes (int *,int *,int ,int ,int *) ;
 int STATUS_SUCCESS ;
 int ok (int,char*,int,...) ;
 int pNtClose (int ) ;
 int pNtCreateEvent (int *,int ,int *,int,int ) ;
 int pNtOpenEvent (int *,int ,int *) ;
 int pNtPulseEvent (int ,int *) ;
 int pNtQueryEvent (int ,int ,TYPE_1__*,int,int *) ;
 int pRtlInitUnicodeString (int *,char const*) ;

__attribute__((used)) static void test_event(void)
{
    HANDLE Event;
    HANDLE Event2;
    NTSTATUS status;
    UNICODE_STRING str;
    OBJECT_ATTRIBUTES attr;
    EVENT_BASIC_INFORMATION info;
    static const WCHAR eventName[] = {'\\','B','a','s','e','N','a','m','e','d','O','b','j','e','c','t','s','\\','t','e','s','t','E','v','e','n','t',0};

    pRtlInitUnicodeString(&str, eventName);
    InitializeObjectAttributes(&attr, &str, 0, 0, ((void*)0));

    status = pNtCreateEvent(&Event, GENERIC_ALL, &attr, 1, 0);
    ok( status == STATUS_SUCCESS, "NtCreateEvent failed %08x\n", status );

    status = pNtPulseEvent(Event, ((void*)0));
    ok( status == STATUS_SUCCESS, "NtPulseEvent failed %08x\n", status );

    status = pNtQueryEvent(Event, EventBasicInformation, &info, sizeof(info), ((void*)0));
    ok( status == STATUS_SUCCESS, "NtQueryEvent failed %08x\n", status );
    ok( info.EventType == 1 && info.EventState == 0,
        "NtQueryEvent failed, expected 1 0, got %d %d\n", info.EventType, info.EventState );

    status = pNtOpenEvent(&Event2, GENERIC_ALL, &attr);
    ok( status == STATUS_SUCCESS, "NtOpenEvent failed %08x\n", status );

    pNtClose(Event);

    status = pNtQueryEvent(Event2, EventBasicInformation, &info, sizeof(info), ((void*)0));
    ok( status == STATUS_SUCCESS, "NtQueryEvent failed %08x\n", status );
    ok( info.EventType == 1 && info.EventState == 0,
        "NtQueryEvent failed, expected 1 0, got %d %d\n", info.EventType, info.EventState );

    pNtClose(Event2);
}
