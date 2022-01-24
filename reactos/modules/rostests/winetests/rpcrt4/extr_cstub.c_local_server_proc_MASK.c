#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IPSFactoryBuffer ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_test1 ; 
 int /*<<< orphan*/  CLSID_test_ps ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  EVENT_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IPSFactoryBuffer ; 
 int /*<<< orphan*/  IID_ITest1 ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  REGCLS_MULTIPLEUSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aProxyFileList ; 
 int /*<<< orphan*/  gPFactory ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_cf ; 

__attribute__((used)) static void FUNC11(void)
{
    DWORD obj_cookie, ps_cookie, index;
    HANDLE stop_event, ready_event;
    IPSFactoryBuffer *ps;
    HRESULT hr;

    stop_event = FUNC8(EVENT_ALL_ACCESS, FALSE, "wine_cstub_test_server_stop");
    ready_event = FUNC8(EVENT_ALL_ACCESS, FALSE, "wine_cstub_test_server_ready");

    FUNC0(NULL);

    hr = FUNC1(&CLSID_test1, (IUnknown *)&test_cf,
        CLSCTX_LOCAL_SERVER, REGCLS_MULTIPLEUSE, &obj_cookie);
    FUNC10(hr == S_OK, "got %#x\n", hr);

    hr = FUNC7(&CLSID_test_ps, &IID_IPSFactoryBuffer, (void **)&ps,
        &aProxyFileList, &CLSID_test_ps, &gPFactory);
    FUNC10(hr == S_OK, "got %#x\n", hr);

    hr = FUNC1(&CLSID_test_ps, (IUnknown *)ps,
        CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &ps_cookie);
    FUNC10(hr == S_OK, "got %#x\n", hr);

    hr = FUNC2(&IID_ITest1, &CLSID_test_ps);
    FUNC10(hr == S_OK, "got %#x\n", hr);

    FUNC9(ready_event);

    hr = FUNC5(0, 1000, 1, &stop_event, &index);
    FUNC10(hr == S_OK, "got %#x\n", hr);
    FUNC10(!index, "got %u\n", index);

    hr = FUNC3(ps_cookie);
    FUNC10(hr == S_OK, "got %#x\n", hr);

    hr = FUNC3(obj_cookie);
    FUNC10(hr == S_OK, "got %#x\n", hr);

    FUNC4();
    FUNC6(0);
}