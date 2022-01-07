
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int) ;
 int S_OK ;
 int ok (int,char*,int,...) ;
 int pSHCreateThreadRef (int*,int **) ;
 int pSHGetThreadRef (int **) ;
 int pSHSetThreadRef (int *) ;
 int trace (char*,int,int *,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHCreateThreadRef(void)
{
    IUnknown *pobj;
    IUnknown *punk;
    LONG refcount;
    HRESULT hr;


    if (!pSHCreateThreadRef) {
        win_skip("SHCreateThreadRef not found\n");
        return;
    }


    hr = pSHSetThreadRef(((void*)0));
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    pobj = ((void*)0);
    refcount = 0xdeadbeef;
    hr = pSHCreateThreadRef(&refcount, &pobj);
    ok((hr == S_OK) && pobj && (refcount == 1),
        "got 0x%x and %p with %d (expected S_OK and '!= NULL' with 1)\n",
        hr, pobj, refcount);


    punk = ((void*)0);
    hr = pSHGetThreadRef(&punk);
    ok( (hr == E_NOINTERFACE) && (punk == ((void*)0)),
        "got 0x%x and %p (expected E_NOINTERFACE and NULL)\n", hr, punk);


    hr = pSHSetThreadRef(pobj);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);


    punk = ((void*)0);
    hr = pSHGetThreadRef(&punk);
    ok( (hr == S_OK) && (punk == pobj) && (refcount == 2),
        "got 0x%x and %p with %d (expected S_OK and %p with 2)\n",
        hr, punk, refcount, pobj);


    if (SUCCEEDED(hr)) {
        hr = IUnknown_Release(pobj);
        ok((hr == 1) && (hr == refcount),
            "got %d with %d (expected 1 with 1)\n", hr, refcount);
    }


    if (pobj) {
        hr = IUnknown_Release(pobj);
        ok((hr == 0) && (hr == refcount),
            "got %d with %d (expected 0 with 0)\n", hr, refcount);
    }

    if (0) {


        punk = ((void*)0);
        hr = pSHGetThreadRef(&punk);
        trace("got 0x%x and %p with %d\n", hr, punk, refcount);
    }


    hr = pSHSetThreadRef(((void*)0));
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);


    if (0) {

        pobj = ((void*)0);
        hr = pSHCreateThreadRef(((void*)0), &pobj);
        ok(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);

        refcount = 0xdeadbeef;

        hr = pSHCreateThreadRef(&refcount, ((void*)0));
        ok( (hr == E_INVALIDARG) && (refcount == 0xdeadbeef),
            "got 0x%x with 0x%x (expected E_INVALIDARG and oxdeadbeef)\n",
            hr, refcount);
    }
}
