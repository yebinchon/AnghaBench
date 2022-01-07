
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_object_data {int stream; int * member_4; int member_3; int * member_2; int * member_1; int * member_0; } ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int IMessageFilter ;
typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;


 scalar_t__ CoRegisterMessageFilter (int *,int **) ;
 scalar_t__ CoUnmarshalInterface (int *,int **,...) ;
 scalar_t__ CreateStreamOnHGlobal (int *,int **,...) ;
 scalar_t__ IClassFactory_CreateInstance (int *,int **,...) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IUnknown ;
 int IStream_Release (int ) ;
 int IStream_Seek (int ,int ,int ,int *) ;
 int IUnknown_Release (int *) ;
 int MSHLFLAGS_NORMAL ;
 int MessageFilter ;
 scalar_t__ RPC_E_CALL_REJECTED ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 int Test_ClassFactory ;
 scalar_t__ cLocks ;
 int end_host_object (int ,int ) ;
 int ok (int,char*,scalar_t__) ;
 int ok_more_than_one_lock () ;
 int ok_no_locks () ;
 int ok_ole_success (scalar_t__,scalar_t__ (*) (int *,int **)) ;
 int start_host_object2 (struct host_object_data*,int *) ;
 int ullZero ;

__attribute__((used)) static void test_message_filter(void)
{
    HRESULT hr;
    IClassFactory *cf = ((void*)0);
    DWORD tid;
    IUnknown *proxy = ((void*)0);
    IMessageFilter *prev_filter = ((void*)0);
    HANDLE thread;

    struct host_object_data object_data = { ((void*)0), &IID_IClassFactory, (IUnknown*)&Test_ClassFactory,
                                            MSHLFLAGS_NORMAL, &MessageFilter };

    cLocks = 0;

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &object_data.stream);
    ok_ole_success(hr, CreateStreamOnHGlobal);
    tid = start_host_object2(&object_data, &thread);

    ok_more_than_one_lock();

    IStream_Seek(object_data.stream, ullZero, STREAM_SEEK_SET, ((void*)0));
    hr = CoUnmarshalInterface(object_data.stream, &IID_IClassFactory, (void **)&cf);
    ok_ole_success(hr, CoUnmarshalInterface);
    IStream_Release(object_data.stream);

    ok_more_than_one_lock();

    hr = IClassFactory_CreateInstance(cf, ((void*)0), &IID_IUnknown, (LPVOID*)&proxy);
    ok(hr == RPC_E_CALL_REJECTED, "Call should have returned RPC_E_CALL_REJECTED, but return 0x%08x instead\n", hr);
    if (proxy) IUnknown_Release(proxy);
    proxy = ((void*)0);

    hr = CoRegisterMessageFilter(&MessageFilter, &prev_filter);
    ok_ole_success(hr, CoRegisterMessageFilter);

    hr = IClassFactory_CreateInstance(cf, ((void*)0), &IID_IUnknown, (LPVOID*)&proxy);
    ok_ole_success(hr, IClassFactory_CreateInstance);

    IUnknown_Release(proxy);

    IClassFactory_Release(cf);

    ok_no_locks();

    end_host_object(tid, thread);

    hr = CoRegisterMessageFilter(prev_filter, ((void*)0));
    ok_ole_success(hr, CoRegisterMessageFilter);
}
