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
typedef  int /*<<< orphan*/  ITest1 ;
typedef  int /*<<< orphan*/  IPSFactoryBuffer ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_test1 ; 
 int /*<<< orphan*/  CLSID_test_ps ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IPSFactoryBuffer ; 
 int /*<<< orphan*/  IID_ITest1 ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REGCLS_MULTIPLEUSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  aProxyFileList ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  gPFactory ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(void)
{
    HANDLE process, stop_event, ready_event;
    IPSFactoryBuffer *ps;
    ITest1 *test_obj;
    DWORD ps_cookie;
    CLSID clsid;
    HRESULT hr;
    int ret;

    stop_event = FUNC4(NULL, TRUE, FALSE, "wine_cstub_test_server_stop");
    ready_event = FUNC4(NULL, TRUE, FALSE, "wine_cstub_test_server_ready");

    process = FUNC12("server");
    FUNC13(!FUNC11(ready_event, 1000), "wait failed\n");

    hr = FUNC9(&CLSID_test_ps, &IID_IPSFactoryBuffer, (void **)&ps,
        &aProxyFileList, &CLSID_test_ps, &gPFactory);
    FUNC13(hr == S_OK, "got %#x\n", hr);

    hr = FUNC1(&CLSID_test_ps, (IUnknown *)ps,
        CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &ps_cookie);
    FUNC13(hr == S_OK, "got %#x\n", hr);

    hr = FUNC2(&IID_ITest1, &CLSID_test_ps);
    FUNC13(hr == S_OK, "got %#x\n", hr);

    hr = FUNC0(&CLSID_test1, NULL, CLSCTX_LOCAL_SERVER, &IID_ITest1, (void **)&test_obj);
    FUNC13(hr == S_OK, "got %#x\n", hr);

    ret = FUNC7(test_obj, 3);
    FUNC13(ret == 9, "got %d\n", ret);

    hr = FUNC5(test_obj, &clsid);
    FUNC13(hr == S_OK, "got %#x\n", hr);
    FUNC13(FUNC8(&clsid, &CLSID_test1), "got %s\n", FUNC14(&clsid));

    FUNC6(test_obj);

    FUNC10(stop_event);
    FUNC13(!FUNC11(process, 1000), "wait failed\n");

    hr = FUNC3(ps_cookie);
    FUNC13(hr == S_OK, "got %#x\n", hr);
}