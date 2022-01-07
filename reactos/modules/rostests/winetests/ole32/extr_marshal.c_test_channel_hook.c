
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_object_data {int stream; int * member_4; int member_3; int * member_2; int * member_1; int * member_0; } ;
typedef int LPVOID ;
typedef int IUnknown ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;


 int CoRegisterChannelHook (int *,int *) ;
 int CoRegisterMessageFilter (int *,int *) ;
 int CoUnmarshalInterface (int *,int *,...) ;
 int CreateStreamOnHGlobal (int *,int *,...) ;
 int EXTENTID_WineTest ;
 int IClassFactory_CreateInstance (int *,int *,...) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IUnknown ;
 int IStream_Release (int ) ;
 int IStream_Seek (int ,int ,int ,int *) ;
 int IUnknown_Release (int *) ;
 int MSHLFLAGS_NORMAL ;
 int MessageFilter ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 int TestChannelHook ;
 int Test_ClassFactory ;
 scalar_t__ cLocks ;
 int end_host_object (int ,int ) ;
 int method ;
 int ok_more_than_one_lock () ;
 int ok_no_locks () ;
 int ok_ole_success (int ,int (*) (int *,int *)) ;
 int server_tid ;
 int start_host_object2 (struct host_object_data*,int *) ;
 int ullZero ;

__attribute__((used)) static void test_channel_hook(void)
{
    IClassFactory *cf = ((void*)0);
    DWORD tid;
    IUnknown *proxy = ((void*)0);
    HANDLE thread;
    HRESULT hr;

    struct host_object_data object_data = { ((void*)0), &IID_IClassFactory, (IUnknown*)&Test_ClassFactory,
                                            MSHLFLAGS_NORMAL, &MessageFilter };

    hr = CoRegisterChannelHook(&EXTENTID_WineTest, &TestChannelHook);
    ok_ole_success(hr, CoRegisterChannelHook);

    hr = CoRegisterMessageFilter(&MessageFilter, ((void*)0));
    ok_ole_success(hr, CoRegisterMessageFilter);

    cLocks = 0;

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &object_data.stream);
    ok_ole_success(hr, CreateStreamOnHGlobal);
    tid = start_host_object2(&object_data, &thread);
    server_tid = tid;

    ok_more_than_one_lock();

    IStream_Seek(object_data.stream, ullZero, STREAM_SEEK_SET, ((void*)0));
    hr = CoUnmarshalInterface(object_data.stream, &IID_IClassFactory, (void **)&cf);
    ok_ole_success(hr, CoUnmarshalInterface);
    IStream_Release(object_data.stream);

    ok_more_than_one_lock();

    method = 3;
    hr = IClassFactory_CreateInstance(cf, ((void*)0), &IID_IUnknown, (LPVOID*)&proxy);
    ok_ole_success(hr, IClassFactory_CreateInstance);

    method = 5;
    IUnknown_Release(proxy);

    IClassFactory_Release(cf);

    ok_no_locks();

    end_host_object(tid, thread);

    hr = CoRegisterMessageFilter(((void*)0), ((void*)0));
    ok_ole_success(hr, CoRegisterMessageFilter);
}
