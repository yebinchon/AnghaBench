
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef void ITypeLib ;
typedef void* HRESULT ;


 void* E_INVALIDARG ;
 void* LoadTypeLib (char const*,void**) ;
 void* LoadTypeLibEx (int *,int ,void**) ;
 int REGKIND_NONE ;
 void* TYPE_E_CANTLOADLIBRARY ;
 int ok (int,char*,void*) ;

__attribute__((used)) static void test_LoadTypeLib(void)
{
    ITypeLib *tl;
    HRESULT hres;

    static const WCHAR kernel32_dllW[] = {'k','e','r','n','e','l','3','2','.','d','l','l',0};

    hres = LoadTypeLib(kernel32_dllW, &tl);
    ok(hres == TYPE_E_CANTLOADLIBRARY, "LoadTypeLib returned: %08x, expected TYPE_E_CANTLOADLIBRARY\n", hres);

    hres = LoadTypeLib(((void*)0), ((void*)0));
    ok(hres == E_INVALIDARG, "Got %#x.\n", hres);

    tl = (void *)0xdeadbeef;
    hres = LoadTypeLib(((void*)0), &tl);
    ok(hres == E_INVALIDARG, "Got %#x.\n", hres);
    ok(tl == (void *)0xdeadbeef, "Got %p.\n", tl);

    hres = LoadTypeLibEx(((void*)0), REGKIND_NONE, ((void*)0));
    ok(hres == E_INVALIDARG, "Got %#x.\n", hres);

    tl = (void *)0xdeadbeef;
    hres = LoadTypeLibEx(((void*)0), REGKIND_NONE, &tl);
    ok(hres == E_INVALIDARG, "Got %#x.\n", hres);
    ok(tl == (void *)0xdeadbeef, "Got %p.\n", tl);
}
