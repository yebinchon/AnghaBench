
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 scalar_t__* current_event ;
 int event_cs ;
 int event_handle ;
 int ok (int,char*,char*,...) ;
 int strcmp (char*,char const*) ;
 int strcpy (char*,scalar_t__*) ;
 int trace (char*,char const*) ;

__attribute__((used)) static void expect_event(const char *event_name)
{
    char evt[32];
    DWORD res;

    trace("waiting for %s\n", event_name);

    res = WaitForSingleObject(event_handle, 30000);
    ok(res == WAIT_OBJECT_0, "WaitForSingleObject failed: %u\n", res);
    if(res != WAIT_OBJECT_0)
        return;

    EnterCriticalSection(&event_cs);
    strcpy(evt, current_event);
    *current_event = 0;
    LeaveCriticalSection(&event_cs);

    ok(!strcmp(evt, event_name), "Unexpected event: %s, expected %s\n", evt, event_name);
}
