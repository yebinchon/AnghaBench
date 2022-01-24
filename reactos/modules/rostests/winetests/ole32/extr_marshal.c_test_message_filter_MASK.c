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
struct host_object_data {int /*<<< orphan*/  stream; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMessageFilter ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSHLFLAGS_NORMAL ; 
 int /*<<< orphan*/  MessageFilter ; 
 scalar_t__ RPC_E_CALL_REJECTED ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Test_ClassFactory ; 
 scalar_t__ cLocks ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__ (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ **)) ; 
 int /*<<< orphan*/  FUNC13 (struct host_object_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ullZero ; 

__attribute__((used)) static void FUNC14(void)
{
    HRESULT hr;
    IClassFactory *cf = NULL;
    DWORD tid;
    IUnknown *proxy = NULL;
    IMessageFilter *prev_filter = NULL;
    HANDLE thread;

    struct host_object_data object_data = { NULL, &IID_IClassFactory, *(IUnknown*)&Test_ClassFactory,
                                            &MSHLFLAGS_NORMAL, &MessageFilter };

    cLocks = 0;

    hr = FUNC2(NULL, TRUE, &object_data.stream);
    FUNC12(hr, CreateStreamOnHGlobal);
    tid = FUNC13(&object_data, &thread);

    FUNC10();

    FUNC6(object_data.stream, ullZero, STREAM_SEEK_SET, NULL);
    hr = FUNC1(&object_data.stream, &IID_IClassFactory, (void **)&cf);
    FUNC12(hr, CoUnmarshalInterface);
    FUNC5(object_data.stream);

    FUNC10();

    hr = FUNC3(cf, NULL, &IID_IUnknown, (LPVOID*)&proxy);
    FUNC9(hr == RPC_E_CALL_REJECTED, "Call should have returned RPC_E_CALL_REJECTED, but return 0x%08x instead\n", hr);
    if (proxy) FUNC7(proxy);
    proxy = NULL;

    hr = FUNC0(&MessageFilter, &prev_filter);
    FUNC12(hr, CoRegisterMessageFilter);

    hr = FUNC3(cf, NULL, &IID_IUnknown, (LPVOID*)&proxy);
    FUNC12(hr, IClassFactory_CreateInstance);

    FUNC7(proxy);

    FUNC4(cf);

    FUNC11();

    FUNC8(tid, thread);

    hr = FUNC0(prev_filter, NULL);
    FUNC12(hr, CoRegisterMessageFilter);
}