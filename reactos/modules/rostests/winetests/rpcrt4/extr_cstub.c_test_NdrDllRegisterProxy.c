
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef int * HMODULE ;
typedef int ExtendedProxyFileInfo ;


 scalar_t__ E_ACCESSDENIED ;
 scalar_t__ E_HANDLE ;
 scalar_t__ E_NOINTERFACE ;
 int * GetModuleHandleA (int *) ;
 scalar_t__ NdrDllRegisterProxy (int *,int const**,int *) ;
 scalar_t__ NdrDllUnregisterProxy (int *,int const**,int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int const** proxy_file_list ;
 int const** proxy_file_list2 ;

__attribute__((used)) static void test_NdrDllRegisterProxy( void )
{
    HRESULT res;
    const ExtendedProxyFileInfo *pf;
    HMODULE hmod = GetModuleHandleA(((void*)0));


    res = NdrDllRegisterProxy(((void*)0), ((void*)0), ((void*)0));
    ok(res == E_HANDLE, "Incorrect return code %x\n",res);
    pf = ((void*)0);
    res = NdrDllRegisterProxy(hmod, &pf, ((void*)0));
    ok(res == E_NOINTERFACE, "Incorrect return code %x\n",res);
    res = NdrDllRegisterProxy(hmod, proxy_file_list2, ((void*)0));
    ok(res == E_NOINTERFACE, "Incorrect return code %x\n",res);

    res = NdrDllRegisterProxy(hmod, proxy_file_list, ((void*)0));
    ok(res == S_OK || res == E_ACCESSDENIED, "NdrDllRegisterProxy failed %x\n",res);
    if (res == S_OK)
    {
        res = NdrDllUnregisterProxy(hmod,proxy_file_list, ((void*)0));
        ok(res == S_OK, "NdrDllUnregisterProxy failed %x\n",res);
    }
}
