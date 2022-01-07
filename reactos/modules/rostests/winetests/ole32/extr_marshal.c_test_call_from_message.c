
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int IUnknown ;
typedef int IStream ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;


 int CW_USEDEFAULT ;
 int CoReleaseMarshalData (int *,int *,int *,void**) ;
 int CoUnmarshalInterface (int *,int *,void**) ;
 int CreateStreamOnHGlobal (int *,int *,int *,...) ;
 int * CreateWindowA (char*,int *,int ,int ,int ,int ,int ,int *,int *,int *,int ) ;
 int DestroyWindow (int *) ;
 int DispatchMessageA (int *) ;
 scalar_t__ GetMessageA (int *,int *,int ,int ) ;
 int IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IUnknown ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,int ,int ,int *) ;
 int MSHLFLAGS_NORMAL ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 int TestMsg_ClassFactory ;
 int TranslateMessage (int *) ;
 int end_host_object (int ,int ) ;
 int * hwnd_app ;
 int ok (int ,char*) ;
 int ok_more_than_one_lock () ;
 int ok_no_locks () ;
 int ok_ole_success (int ,int (*) (int *,int *,int *,void**)) ;
 int start_host_object (int *,int *,int *,int ,int *) ;
 int ullZero ;

__attribute__((used)) static void test_call_from_message(void)
{
    MSG msg;
    IStream *pStream;
    HRESULT hr;
    IClassFactory *proxy;
    DWORD tid;
    HANDLE thread;
    IUnknown *object;

    hwnd_app = CreateWindowA("WineCOMTest", ((void*)0), 0, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, ((void*)0), ((void*)0), ((void*)0), 0);
    ok(hwnd_app != ((void*)0), "Window creation failed\n");

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &pStream);
    ok_ole_success(hr, CreateStreamOnHGlobal);
    tid = start_host_object(pStream, &IID_IClassFactory, (IUnknown*)&TestMsg_ClassFactory, MSHLFLAGS_NORMAL, &thread);

    ok_more_than_one_lock();

    IStream_Seek(pStream, ullZero, STREAM_SEEK_SET, ((void*)0));
    hr = CoUnmarshalInterface(pStream, &IID_IClassFactory, (void **)&proxy);
    ok_ole_success(hr, CoReleaseMarshalData);
    IStream_Release(pStream);

    ok_more_than_one_lock();


    hr = IClassFactory_CreateInstance(proxy, ((void*)0), &IID_IUnknown, (void **)&object);
    ok_ole_success(hr, IClassFactory_CreateInstance);

    IClassFactory_Release(proxy);

    ok_no_locks();

    end_host_object(tid, thread);

    while (GetMessageA(&msg, ((void*)0), 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }
    DestroyWindow(hwnd_app);
}
