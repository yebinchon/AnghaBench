
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IClassFactory_iface; } ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CLSCTX_SERVER ;
 int CLSID_WineTestObject ;
 int COINIT_MULTITHREADED ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CoInitializeEx (int *,int ) ;
 scalar_t__ CoRegisterClassObject (int *,int *,int ,int ,int *) ;
 int CoRevokeClassObject (int ) ;
 int CoUninitialize () ;
 int EVENT_MODIFY_STATE ;
 int FALSE ;
 int GetCurrentProcessId () ;
 int GetLastError () ;
 int INFINITE ;
 scalar_t__ OpenEventA (int ,int ,char*) ;
 int REGCLS_MULTIPLEUSE ;
 int SYNCHRONIZE ;
 scalar_t__ S_OK ;
 int SetEvent (scalar_t__) ;
 int WaitForSingleObject (scalar_t__,int ) ;
 int class_ref ;
 TYPE_1__ factory ;
 int obj_ref ;
 int ok (int,char*,int) ;
 int server_locks ;
 int trace (char*,...) ;

__attribute__((used)) static void ole_server(void)
{
    HRESULT hr;
    DWORD key;

    trace("server: starting %u\n", GetCurrentProcessId());

    hr = CoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    if (hr == S_OK)
    {
        trace("server: registering class object\n");
        hr = CoRegisterClassObject(&CLSID_WineTestObject, (IUnknown *)&factory.IClassFactory_iface,
                                   CLSCTX_SERVER, REGCLS_MULTIPLEUSE, &key);
        if (hr == S_OK)
        {
            HANDLE done_event, init_done_event;

            done_event = OpenEventA(SYNCHRONIZE, FALSE, "ole_server_done_event");
            ok(done_event != 0, "server: OpenEvent error %d\n", GetLastError());
            init_done_event = OpenEventA(EVENT_MODIFY_STATE, FALSE, "ole_server_init_done_event");
            ok(init_done_event != 0, "server: OpenEvent error %d\n", GetLastError());

            SetEvent(init_done_event);

            trace("server: waiting for requests\n");
            WaitForSingleObject(done_event, INFINITE);


            ok(class_ref == 1, "expected 1 class refs, got %d\n", class_ref);
            ok(!obj_ref, "expected 0 object refs, got %d\n", obj_ref);
            ok(!server_locks, "expected 0 server locks, got %d\n", server_locks);

            CloseHandle(done_event);
            CloseHandle(init_done_event);
            if (0)
            {

                trace("call CoRevokeClassObject\n");
                CoRevokeClassObject(key);
                trace("ret CoRevokeClassObject\n");
            }
        }
        trace("server: call CoUninitialize\n");
        CoUninitialize();
        trace("server: ret CoUninitialize\n");
    }

    trace("server: exiting %u\n", GetCurrentProcessId());
}
