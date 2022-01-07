
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int CLSID_FakeService ;
 int ITfInputProcessorProfiles_Unregister (int ,int *) ;
 int SUCCEEDED (int ) ;
 int UnregisterTextService () ;
 int g_ipp ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void test_Unregister(void)
{
    HRESULT hr;
    hr = ITfInputProcessorProfiles_Unregister(g_ipp, &CLSID_FakeService);
    ok(SUCCEEDED(hr),"Unable to unregister text service(%x)\n",hr);
    UnregisterTextService();
}
