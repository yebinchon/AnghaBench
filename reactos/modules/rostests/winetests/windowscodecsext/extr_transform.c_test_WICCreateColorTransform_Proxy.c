
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWICColorTransform ;
typedef scalar_t__ HRESULT ;


 int COINIT_APARTMENTTHREADED ;
 int COINIT_MULTITHREADED ;
 scalar_t__ CoInitializeEx (int *,int ) ;
 int CoUninitialize () ;
 scalar_t__ E_INVALIDARG ;
 int IWICColorTransform_Release (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ WICCreateColorTransform_Proxy (int **) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_WICCreateColorTransform_Proxy(void)
{
    HRESULT hr;
    IWICColorTransform *transform;

    hr = WICCreateColorTransform_Proxy( ((void*)0) );
    ok( hr == E_INVALIDARG, "got %08x\n", hr );

    transform = ((void*)0);
    hr = WICCreateColorTransform_Proxy( &transform );
    ok( hr == S_OK, "got %08x\n", hr );
    if (transform) IWICColorTransform_Release( transform );

    hr = CoInitializeEx( ((void*)0), COINIT_APARTMENTTHREADED );
    ok( hr == S_OK, "got %08x\n", hr );

    transform = ((void*)0);
    hr = WICCreateColorTransform_Proxy( &transform );
    ok( hr == S_OK, "got %08x\n", hr );
    if (transform) IWICColorTransform_Release( transform );
    CoUninitialize();

    hr = CoInitializeEx( ((void*)0), COINIT_MULTITHREADED );
    ok( hr == S_OK, "got %08x\n", hr );

    transform = ((void*)0);
    hr = WICCreateColorTransform_Proxy( &transform );
    ok( hr == S_OK, "got %08x\n", hr );
    if (transform) IWICColorTransform_Release( transform );
    CoUninitialize();
}
