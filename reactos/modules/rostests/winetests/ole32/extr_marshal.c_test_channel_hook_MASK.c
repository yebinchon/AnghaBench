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
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  EXTENTID_WineTest ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSHLFLAGS_NORMAL ; 
 int /*<<< orphan*/  MessageFilter ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TestChannelHook ; 
 int /*<<< orphan*/  Test_ClassFactory ; 
 scalar_t__ cLocks ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int method ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  server_tid ; 
 int /*<<< orphan*/  FUNC13 (struct host_object_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ullZero ; 

__attribute__((used)) static void FUNC14(void)
{
    IClassFactory *cf = NULL;
    DWORD tid;
    IUnknown *proxy = NULL;
    HANDLE thread;
    HRESULT hr;

    struct host_object_data object_data = { NULL, &IID_IClassFactory, *(IUnknown*)&Test_ClassFactory,
                                            &MSHLFLAGS_NORMAL, &MessageFilter };

    hr = FUNC0(&EXTENTID_WineTest, &TestChannelHook);
    FUNC12(hr, CoRegisterChannelHook);

    hr = FUNC1(&MessageFilter, NULL);
    FUNC12(hr, CoRegisterMessageFilter);

    cLocks = 0;

    hr = FUNC3(NULL, &TRUE, &object_data.stream);
    FUNC12(hr, CreateStreamOnHGlobal);
    tid = FUNC13(&object_data, &thread);
    server_tid = tid;

    FUNC10();

    FUNC7(object_data.stream, ullZero, STREAM_SEEK_SET, NULL);
    hr = FUNC2(&object_data.stream, &IID_IClassFactory, (void **)&cf);
    FUNC12(hr, CoUnmarshalInterface);
    FUNC6(object_data.stream);

    FUNC10();

    method = 3;
    hr = FUNC4(cf, NULL, &IID_IUnknown, (LPVOID*)&proxy);
    FUNC12(hr, IClassFactory_CreateInstance);

    method = 5;
    FUNC8(proxy);

    FUNC5(cf);

    FUNC11();

    FUNC9(tid, thread);

    hr = FUNC1(NULL, NULL);
    FUNC12(hr, CoRegisterMessageFilter);
}