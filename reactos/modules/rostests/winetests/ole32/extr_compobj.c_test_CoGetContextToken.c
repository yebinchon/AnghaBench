
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int ULONG ;
typedef int IUnknown ;
typedef int IObjContext ;
typedef int HRESULT ;


 int APTTYPEQUALIFIER_NONE ;
 int APTTYPE_CURRENT ;
 int APTTYPE_MAINSTA ;
 int CO_E_NOTINITIALIZED ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int E_POINTER ;
 int IID_IObjContext ;
 int IObjContext_AddRef (int *) ;
 int IObjContext_Release (int *) ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int ok (int,char*,...) ;
 int pCoGetContextToken (int*) ;
 int pCoGetObjectContext (int *,void**) ;
 int test_apt_type (int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CoGetContextToken(void)
{
    HRESULT hr;
    ULONG refs;
    ULONG_PTR token, token2;
    IObjContext *ctx;

    if (!pCoGetContextToken)
    {
        win_skip("CoGetContextToken not present\n");
        return;
    }

    token = 0xdeadbeef;
    hr = pCoGetContextToken(&token);
    ok(hr == CO_E_NOTINITIALIZED, "Expected CO_E_NOTINITIALIZED, got 0x%08x\n", hr);
    ok(token == 0xdeadbeef, "Expected 0, got 0x%lx\n", token);

    test_apt_type(APTTYPE_CURRENT, APTTYPEQUALIFIER_NONE);

    CoInitialize(((void*)0));

    test_apt_type(APTTYPE_MAINSTA, APTTYPEQUALIFIER_NONE);

    hr = pCoGetContextToken(((void*)0));
    ok(hr == E_POINTER, "Expected E_POINTER, got 0x%08x\n", hr);

    token = 0;
    hr = pCoGetContextToken(&token);
    ok(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    ok(token, "Expected token != 0\n");

    token2 = 0;
    hr = pCoGetContextToken(&token2);
    ok(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    ok(token2 == token, "got different token\n");

    refs = IUnknown_AddRef((IUnknown *)token);
    ok(refs == 1, "Expected 1, got %u\n", refs);

    hr = pCoGetObjectContext(&IID_IObjContext, (void **)&ctx);
    ok(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    ok(ctx == (IObjContext *)token, "Expected interface pointers to be the same\n");

    refs = IObjContext_AddRef(ctx);
    ok(refs == 3, "Expected 3, got %u\n", refs);

    refs = IObjContext_Release(ctx);
    ok(refs == 2, "Expected 2, got %u\n", refs);

    refs = IUnknown_Release((IUnknown *)token);
    ok(refs == 1, "Expected 1, got %u\n", refs);


    token = 0;
    hr = pCoGetContextToken(&token);
    ok(hr == S_OK, "Expected S_OK, got 0x%08x\n", hr);
    ok(token, "Expected token != 0\n");
    ok(ctx == (IObjContext *)token, "Expected interface pointers to be the same\n");

    refs = IObjContext_AddRef(ctx);
    ok(refs == 2, "Expected 1, got %u\n", refs);

    refs = IObjContext_Release(ctx);
    ok(refs == 1, "Expected 0, got %u\n", refs);

    refs = IObjContext_Release(ctx);
    ok(refs == 0, "Expected 0, got %u\n", refs);

    CoUninitialize();
}
