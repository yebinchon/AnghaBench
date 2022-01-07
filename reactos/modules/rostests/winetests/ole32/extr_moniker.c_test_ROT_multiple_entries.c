
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUnknown ;
typedef char const IRunningObjectTable ;
typedef int IMoniker ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ CreateFileMoniker (char const*,scalar_t__) ;
 scalar_t__ GetRunningObjectTable (char const*,scalar_t__) ;
 int IMoniker_Release (int *) ;
 scalar_t__ IRunningObjectTable_GetObject (char const*,scalar_t__,...) ;
 scalar_t__ IRunningObjectTable_Register (char const*,int ,int *,int *,scalar_t__*) ;
 int IRunningObjectTable_Release (char const*) ;
 scalar_t__ IRunningObjectTable_Revoke (char const*,scalar_t__) ;
 int IUnknown_Release (int *) ;
 scalar_t__ MK_S_MONIKERALREADYREGISTERED ;
 int Test_ClassFactory ;
 int ok (int,char*,scalar_t__) ;
 int ok_ole_success (scalar_t__,...) ;

__attribute__((used)) static void test_ROT_multiple_entries(void)
{
    HRESULT hr;
    IMoniker *pMoniker = ((void*)0);
    IRunningObjectTable *pROT = ((void*)0);
    DWORD dwCookie1, dwCookie2;
    IUnknown *pObject = ((void*)0);
    static const WCHAR moniker_path[] =
        {'\\', 'w','i','n','d','o','w','s','\\','s','y','s','t','e','m','\\','t','e','s','t','1','.','d','o','c',0};

    hr = GetRunningObjectTable(0, &pROT);
    ok_ole_success(hr, GetRunningObjectTable);

    hr = CreateFileMoniker(moniker_path, &pMoniker);
    ok_ole_success(hr, CreateFileMoniker);

    hr = IRunningObjectTable_Register(pROT, 0, (IUnknown *)&Test_ClassFactory, pMoniker, &dwCookie1);
    ok_ole_success(hr, IRunningObjectTable_Register);

    hr = IRunningObjectTable_Register(pROT, 0, (IUnknown *)&Test_ClassFactory, pMoniker, &dwCookie2);
    ok(hr == MK_S_MONIKERALREADYREGISTERED, "IRunningObjectTable_Register should have returned MK_S_MONIKERALREADYREGISTERED instead of 0x%08x\n", hr);

    ok(dwCookie1 != dwCookie2, "cookie returned for registering duplicate object shouldn't match cookie of original object (0x%x)\n", dwCookie1);

    hr = IRunningObjectTable_GetObject(pROT, pMoniker, &pObject);
    ok_ole_success(hr, IRunningObjectTable_GetObject);
    IUnknown_Release(pObject);

    hr = IRunningObjectTable_Revoke(pROT, dwCookie1);
    ok_ole_success(hr, IRunningObjectTable_Revoke);

    hr = IRunningObjectTable_GetObject(pROT, pMoniker, &pObject);
    ok_ole_success(hr, IRunningObjectTable_GetObject);
    IUnknown_Release(pObject);

    hr = IRunningObjectTable_Revoke(pROT, dwCookie2);
    ok_ole_success(hr, IRunningObjectTable_Revoke);

    IMoniker_Release(pMoniker);

    IRunningObjectTable_Release(pROT);
}
