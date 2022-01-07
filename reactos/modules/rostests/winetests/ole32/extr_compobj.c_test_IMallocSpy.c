
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMalloc ;
typedef int * HRESULT ;


 int * CO_E_OBJISREG ;
 int * CO_E_OBJNOTREG ;
 int * CoGetMalloc (int ,int **) ;
 int * CoRegisterMallocSpy (int *) ;
 int * CoRevokeMallocSpy () ;
 int * E_INVALIDARG ;
 int IMalloc_Free (int *,int *) ;
 int IMalloc_Release (int *) ;
 int MEMCTX_TASK ;
 int * S_OK ;
 int ok (int,char*,int *) ;
 int testspy ;

__attribute__((used)) static void test_IMallocSpy(void)
{
    IMalloc *imalloc;
    HRESULT hr;

    hr = CoRegisterMallocSpy(((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = CoRevokeMallocSpy();
    ok(hr == CO_E_OBJNOTREG, "got 0x%08x\n", hr);

    hr = CoRegisterMallocSpy(&testspy);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = CoRegisterMallocSpy(((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = CoRegisterMallocSpy(&testspy);
    ok(hr == CO_E_OBJISREG, "got 0x%08x\n", hr);

    imalloc = ((void*)0);
    hr = CoGetMalloc(MEMCTX_TASK, &imalloc);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(imalloc != ((void*)0), "got %p\n", imalloc);

    IMalloc_Free(imalloc, ((void*)0));

    IMalloc_Release(imalloc);

    hr = CoRevokeMallocSpy();
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = CoRevokeMallocSpy();
    ok(hr == CO_E_OBJNOTREG, "got 0x%08x\n", hr);
}
