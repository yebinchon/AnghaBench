
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int EVENT_ALL_ACCESS ;
 int FALSE ;
 int OpenEventA (int ,int ,char*) ;
 int OutputDebugStringA (char*) ;
 int SetEvent (int ) ;
 int Sleep (int) ;
 scalar_t__ TRUE ;

__attribute__((used)) static void dummy_process(char *event_name)
{
    HANDLE event = OpenEventA(EVENT_ALL_ACCESS, FALSE, event_name);

    while (TRUE)
    {
        SetEvent(event);
        OutputDebugStringA("test");
        Sleep(5);
    }
}
