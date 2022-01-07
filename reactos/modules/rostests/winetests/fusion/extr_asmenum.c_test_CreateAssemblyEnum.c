
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IAssemblyName ;
typedef int IAssemblyEnum ;
typedef int * HRESULT ;


 int ASM_CACHE_GAC ;
 int ASM_CACHE_ROOT ;
 int CANOF_PARSE_DISPLAY_NAME ;
 int * E_INVALIDARG ;
 int IAssemblyEnum_Release (int *) ;
 int IAssemblyName_Release (int *) ;
 int MAX_PATH ;
 int * S_OK ;
 int ok (int,char*,...) ;
 int * pCreateAssemblyEnum (int **,int *,int *,int ,int *) ;
 int * pCreateAssemblyNameObject (int **,int *,int ,int *) ;
 int to_widechar (int *,char*) ;

__attribute__((used)) static void test_CreateAssemblyEnum(void)
{
    HRESULT hr;
    WCHAR namestr[MAX_PATH];
    IAssemblyEnum *asmenum;
    IAssemblyName *asmname;

    to_widechar(namestr, "wine");
    asmname = ((void*)0);
    hr = pCreateAssemblyNameObject(&asmname, namestr, CANOF_PARSE_DISPLAY_NAME, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(asmname != ((void*)0), "Expected non-NULL asmname\n");


    if (0)
    {

        hr = pCreateAssemblyEnum(((void*)0), ((void*)0), asmname, ASM_CACHE_GAC, ((void*)0));
        ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    }


    asmenum = ((void*)0);
    hr = pCreateAssemblyEnum(&asmenum, ((void*)0), ((void*)0), ASM_CACHE_GAC, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(asmenum != ((void*)0), "Expected non-NULL asmenum\n");

    IAssemblyEnum_Release(asmenum);


    asmenum = (IAssemblyEnum *)0xdeadbeef;
    hr = pCreateAssemblyEnum(&asmenum, ((void*)0), ((void*)0), ASM_CACHE_ROOT, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    ok(asmenum == (IAssemblyEnum *)0xdeadbeef,
       "Expected asmenum to be unchanged, got %p\n", asmenum);


    asmenum = (IAssemblyEnum *)0xdeadbeef;
    hr = pCreateAssemblyEnum(&asmenum, ((void*)0), ((void*)0), 0, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    ok(asmenum == (IAssemblyEnum *)0xdeadbeef,
       "Expected asmenum to be unchanged, got %p\n", asmenum);

    IAssemblyName_Release(asmname);
}
