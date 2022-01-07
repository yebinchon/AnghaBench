
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int HKEY ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_TF_CategoryMgr ;
 int CLSID_TF_InputProcessorProfiles ;
 int CLSID_TF_ThreadMgr ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoInitialize (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_FAIL ;
 int HKEY_LOCAL_MACHINE ;
 int IID_ITfCategoryMgr ;
 int IID_ITfInputProcessorProfiles ;
 int IID_ITfThreadMgr ;
 int KEY_READ ;
 int KEY_WRITE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int g_cm ;
 int g_ipp ;
 int g_tm ;
 int skip (char*) ;

__attribute__((used)) static HRESULT initialize(void)
{
    HRESULT hr;
    HKEY hkey;

    CoInitialize(((void*)0));

    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\CTF\\TIP", 0,
                      KEY_READ|KEY_WRITE, &hkey) != ERROR_SUCCESS)
    {
        skip("Not enough permission to register input processor\n");
        return E_FAIL;
    }
    RegCloseKey(hkey);

    hr = CoCreateInstance (&CLSID_TF_InputProcessorProfiles, ((void*)0),
          CLSCTX_INPROC_SERVER, &IID_ITfInputProcessorProfiles, (void**)&g_ipp);
    if (SUCCEEDED(hr))
        hr = CoCreateInstance (&CLSID_TF_CategoryMgr, ((void*)0),
          CLSCTX_INPROC_SERVER, &IID_ITfCategoryMgr, (void**)&g_cm);
    if (SUCCEEDED(hr))
        hr = CoCreateInstance (&CLSID_TF_ThreadMgr, ((void*)0),
          CLSCTX_INPROC_SERVER, &IID_ITfThreadMgr, (void**)&g_tm);
    return hr;
}
