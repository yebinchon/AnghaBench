
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMessageFilter ;
typedef scalar_t__ HRESULT ;


 int COINIT_APARTMENTTHREADED ;
 int COINIT_MULTITHREADED ;
 scalar_t__ CO_E_NOT_SUPPORTED ;
 scalar_t__ CoRegisterMessageFilter (int *,int **) ;
 int CoUninitialize () ;
 int MessageFilter ;
 int ok (int,char*,scalar_t__) ;
 int ok_ole_success (scalar_t__,char*) ;
 int pCoInitializeEx (int *,int ) ;

__attribute__((used)) static void test_CoRegisterMessageFilter(void)
{
    HRESULT hr;
    IMessageFilter *prev_filter;

    hr = CoRegisterMessageFilter(&MessageFilter, &prev_filter);
    ok(hr == CO_E_NOT_SUPPORTED,
        "CoRegisterMessageFilter should have failed with CO_E_NOT_SUPPORTED instead of 0x%08x\n",
        hr);

    pCoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    prev_filter = (IMessageFilter *)0xdeadbeef;
    hr = CoRegisterMessageFilter(&MessageFilter, &prev_filter);
    ok(hr == CO_E_NOT_SUPPORTED,
        "CoRegisterMessageFilter should have failed with CO_E_NOT_SUPPORTED instead of 0x%08x\n",
        hr);
    ok(prev_filter == (IMessageFilter *)0xdeadbeef,
        "prev_filter should have been set to %p\n", prev_filter);
    CoUninitialize();

    pCoInitializeEx(((void*)0), COINIT_APARTMENTTHREADED);

    hr = CoRegisterMessageFilter(((void*)0), ((void*)0));
    ok_ole_success(hr, "CoRegisterMessageFilter");

    prev_filter = (IMessageFilter *)0xdeadbeef;
    hr = CoRegisterMessageFilter(((void*)0), &prev_filter);
    ok_ole_success(hr, "CoRegisterMessageFilter");
    ok(prev_filter == ((void*)0), "prev_filter should have been set to NULL instead of %p\n", prev_filter);

    hr = CoRegisterMessageFilter(&MessageFilter, &prev_filter);
    ok_ole_success(hr, "CoRegisterMessageFilter");
    ok(prev_filter == ((void*)0), "prev_filter should have been set to NULL instead of %p\n", prev_filter);

    hr = CoRegisterMessageFilter(((void*)0), ((void*)0));
    ok_ole_success(hr, "CoRegisterMessageFilter");

    CoUninitialize();
}
