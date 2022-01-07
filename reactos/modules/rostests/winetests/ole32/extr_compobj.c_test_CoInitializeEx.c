
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 int COINIT_APARTMENTTHREADED ;
 int CoUninitialize () ;
 scalar_t__ OleInitialize (int *) ;
 int OleUninitialize () ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInitializeEx (int *,int ) ;

__attribute__((used)) static void test_CoInitializeEx(void)
{
    HRESULT hr;

    hr = pCoInitializeEx(((void*)0), COINIT_APARTMENTTHREADED);
    ok(hr == S_OK, "CoInitializeEx failed with error 0x%08x\n", hr);



    hr = OleInitialize(((void*)0));
    ok(hr == S_OK, "OleInitialize failed with error 0x%08x\n", hr);


    hr = OleInitialize(((void*)0));
    ok(hr == S_FALSE, "Expected S_FALSE, hr = 0x%08x\n", hr);


    CoUninitialize();
    OleUninitialize();
    OleUninitialize();
}
