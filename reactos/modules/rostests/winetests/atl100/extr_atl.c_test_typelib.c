
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ITypeLib ;
typedef scalar_t__ HRESULT ;
typedef int * HINSTANCE ;
typedef scalar_t__ BSTR ;


 size_t ARRAY_SIZE (char const*) ;
 scalar_t__ AtlLoadTypeLib (int *,int *,scalar_t__*,int **) ;
 int FreeLibrary (int *) ;
 int ITypeLib_Release (int *) ;
 int * LoadLibraryA (char*) ;
 scalar_t__ S_OK ;
 int SysFreeString (scalar_t__) ;
 size_t SysStringLen (scalar_t__) ;
 scalar_t__ lstrcmpiW (scalar_t__,char const*) ;
 int ok (int,char*,...) ;
 int wine_dbgstr_w (scalar_t__) ;

__attribute__((used)) static void test_typelib(void)
{
    ITypeLib *typelib;
    HINSTANCE inst;
    size_t len;
    BSTR path;
    HRESULT hres;

    static const WCHAR scrrun_dll_suffixW[] = {'\\','s','c','r','r','u','n','.','d','l','l',0};
    static const WCHAR mshtml_tlb_suffixW[] = {'\\','m','s','h','t','m','l','.','t','l','b',0};

    inst = LoadLibraryA("scrrun.dll");
    ok(inst != ((void*)0), "Could not load scrrun.dll\n");

    typelib = ((void*)0);
    hres = AtlLoadTypeLib(inst, ((void*)0), &path, &typelib);
    ok(hres == S_OK, "AtlLoadTypeLib failed: %08x\n", hres);
    FreeLibrary(inst);

    len = SysStringLen(path);
    ok(len > ARRAY_SIZE(scrrun_dll_suffixW)
       && lstrcmpiW(path+len-ARRAY_SIZE(scrrun_dll_suffixW), scrrun_dll_suffixW),
       "unexpected path %s\n", wine_dbgstr_w(path));
    SysFreeString(path);
    ok(typelib != ((void*)0), "typelib == NULL\n");
    ITypeLib_Release(typelib);

    inst = LoadLibraryA("mshtml.dll");
    ok(inst != ((void*)0), "Could not load mshtml.dll\n");

    typelib = ((void*)0);
    hres = AtlLoadTypeLib(inst, ((void*)0), &path, &typelib);
    ok(hres == S_OK, "AtlLoadTypeLib failed: %08x\n", hres);
    FreeLibrary(inst);

    len = SysStringLen(path);
    ok(len > ARRAY_SIZE(mshtml_tlb_suffixW)
       && lstrcmpiW(path+len-ARRAY_SIZE(mshtml_tlb_suffixW), mshtml_tlb_suffixW),
       "unexpected path %s\n", wine_dbgstr_w(path));
    SysFreeString(path);
    ok(typelib != ((void*)0), "typelib == NULL\n");
    ITypeLib_Release(typelib);
}
