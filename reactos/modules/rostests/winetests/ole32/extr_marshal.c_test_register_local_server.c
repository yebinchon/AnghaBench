
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int message; } ;
typedef TYPE_1__ MSG ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef void* HANDLE ;
typedef scalar_t__ DWORD ;


 int CLSCTX_LOCAL_SERVER ;
 int CLSID_WineOOPTest ;
 int CloseHandle (void*) ;
 int CoRegisterClassObject (scalar_t__,...) ;
 int CoRevokeClassObject (scalar_t__) ;
 void* CreateEventA (int *,int ,int ,char*) ;
 int DispatchMessageA (TYPE_1__*) ;
 int FALSE ;
 scalar_t__ MsgWaitForMultipleObjects (int,void**,int ,int,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (TYPE_1__*,int *,int ,int ,int ) ;
 int QS_ALLINPUT ;
 int REGCLS_SINGLEUSE ;
 int SetEvent (void*) ;
 int TRUE ;
 int TestOOP_ClassFactory ;
 int TranslateMessage (TYPE_1__*) ;
 scalar_t__ WAIT_OBJECT_0 ;
 void* heventShutdown ;
 int ok (int,char*) ;
 int ok_ole_success (int ,int (*) (scalar_t__)) ;
 int trace (char*,int ) ;

__attribute__((used)) static void test_register_local_server(void)
{
    DWORD cookie;
    HRESULT hr;
    HANDLE ready_event;
    DWORD wait;
    HANDLE handles[2];

    heventShutdown = CreateEventA(((void*)0), TRUE, FALSE, ((void*)0));
    ready_event = CreateEventA(((void*)0), FALSE, FALSE, "Wine COM Test Ready Event");
    handles[0] = CreateEventA(((void*)0), FALSE, FALSE, "Wine COM Test Quit Event");
    handles[1] = CreateEventA(((void*)0), FALSE, FALSE, "Wine COM Test Repeat Event");

again:
    hr = CoRegisterClassObject(&CLSID_WineOOPTest, (IUnknown *)&TestOOP_ClassFactory,
                               CLSCTX_LOCAL_SERVER, REGCLS_SINGLEUSE, &cookie);
    ok_ole_success(hr, CoRegisterClassObject);

    SetEvent(ready_event);

    do
    {
        wait = MsgWaitForMultipleObjects(2, handles, FALSE, 30000, QS_ALLINPUT);
        if (wait == WAIT_OBJECT_0+2)
        {
            MSG msg;

            if (PeekMessageA(&msg, ((void*)0), 0, 0, PM_REMOVE))
            {
                trace("Message 0x%x\n", msg.message);
                TranslateMessage(&msg);
                DispatchMessageA(&msg);
            }
        }
        else if (wait == WAIT_OBJECT_0+1)
        {
            hr = CoRevokeClassObject(cookie);
            ok_ole_success(hr, CoRevokeClassObject);
            goto again;
        }
    }
    while (wait == WAIT_OBJECT_0+2);

    ok( wait == WAIT_OBJECT_0, "quit event wait timed out\n" );
    hr = CoRevokeClassObject(cookie);
    ok_ole_success(hr, CoRevokeClassObject);
    CloseHandle(handles[0]);
    CloseHandle(handles[1]);
}
