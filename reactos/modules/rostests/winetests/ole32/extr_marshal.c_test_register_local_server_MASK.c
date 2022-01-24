#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ MSG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  void* HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_WineOOPTest ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 (int,void**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_ALLINPUT ; 
 int /*<<< orphan*/  REGCLS_SINGLEUSE ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TestOOP_ClassFactory ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 void* heventShutdown ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (scalar_t__)) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    DWORD cookie;
    HRESULT hr;
    HANDLE ready_event;
    DWORD wait;
    HANDLE handles[2];

    heventShutdown = FUNC3(NULL, TRUE, FALSE, NULL);
    ready_event = FUNC3(NULL, FALSE, FALSE, "Wine COM Test Ready Event");
    handles[0] = FUNC3(NULL, FALSE, FALSE, "Wine COM Test Quit Event");
    handles[1] = FUNC3(NULL, FALSE, FALSE, "Wine COM Test Repeat Event");

again:
    hr = FUNC1(&CLSID_WineOOPTest, (IUnknown *)&TestOOP_ClassFactory,
                               CLSCTX_LOCAL_SERVER, REGCLS_SINGLEUSE, &cookie);
    FUNC10(hr, CoRegisterClassObject);

    FUNC7(ready_event);

    do
    {
        wait = FUNC5(2, handles, FALSE, 30000, QS_ALLINPUT);
        if (wait == WAIT_OBJECT_0+2)
        {
            MSG msg;

            if (FUNC6(&msg, NULL, 0, 0, PM_REMOVE))
            {
                FUNC11("Message 0x%x\n", msg.message);
                FUNC8(&msg);
                FUNC4(&msg);
            }
        }
        else if (wait == WAIT_OBJECT_0+1)
        {
            hr = FUNC2(cookie);
            FUNC10(hr, CoRevokeClassObject);
            goto again;
        }
    }
    while (wait == WAIT_OBJECT_0+2);

    FUNC9( wait == WAIT_OBJECT_0, "quit event wait timed out\n" );
    hr = FUNC2(cookie);
    FUNC10(hr, CoRevokeClassObject);
    FUNC0(handles[0]);
    FUNC0(handles[1]);
}