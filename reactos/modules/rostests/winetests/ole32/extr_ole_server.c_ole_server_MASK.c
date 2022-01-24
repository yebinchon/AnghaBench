#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  IClassFactory_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_SERVER ; 
 int /*<<< orphan*/  CLSID_WineTestObject ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  EVENT_MODIFY_STATE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  REGCLS_MULTIPLEUSE ; 
 int /*<<< orphan*/  SYNCHRONIZE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int class_ref ; 
 TYPE_1__ factory ; 
 int obj_ref ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 
 int server_locks ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void FUNC12(void)
{
    HRESULT hr;
    DWORD key;

    FUNC11("server: starting %u\n", FUNC5());

    hr = FUNC1(NULL, COINIT_MULTITHREADED);
    if (hr == S_OK)
    {
        FUNC11("server: registering class object\n");
        hr = FUNC2(&CLSID_WineTestObject, (IUnknown *)&factory.IClassFactory_iface,
                                   CLSCTX_SERVER, REGCLS_MULTIPLEUSE, &key);
        if (hr == S_OK)
        {
            HANDLE done_event, init_done_event;

            done_event = FUNC7(SYNCHRONIZE, FALSE, "ole_server_done_event");
            FUNC10(done_event != 0, "server: OpenEvent error %d\n", FUNC6());
            init_done_event = FUNC7(EVENT_MODIFY_STATE, FALSE, "ole_server_init_done_event");
            FUNC10(init_done_event != 0, "server: OpenEvent error %d\n", FUNC6());

            FUNC8(init_done_event);

            FUNC11("server: waiting for requests\n");
            FUNC9(done_event, INFINITE);

            /* 1 remainining class ref is supposed to be cleared by CoRevokeClassObject */
            FUNC10(class_ref == 1, "expected 1 class refs, got %d\n", class_ref);
            FUNC10(!obj_ref, "expected 0 object refs, got %d\n", obj_ref);
            FUNC10(!server_locks, "expected 0 server locks, got %d\n", server_locks);

            FUNC0(done_event);
            FUNC0(init_done_event);
            if (0)
            {
                /* calling CoRevokeClassObject terminates process under Win7 */
                FUNC11("call CoRevokeClassObject\n");
                FUNC3(key);
                FUNC11("ret CoRevokeClassObject\n");
            }
        }
        FUNC11("server: call CoUninitialize\n");
        FUNC4();
        FUNC11("server: ret CoUninitialize\n");
    }

    FUNC11("server: exiting %u\n", FUNC5());
}