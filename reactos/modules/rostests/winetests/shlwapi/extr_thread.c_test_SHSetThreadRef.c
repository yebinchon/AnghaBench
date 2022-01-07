
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IUnknown_iface; } ;
typedef TYPE_1__ threadref ;
typedef int LONG ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 int AddRef_called ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ S_OK ;
 int init_threadref (TYPE_1__*,int*) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pSHGetThreadRef (int **) ;
 scalar_t__ pSHSetThreadRef (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHSetThreadRef(void)
{
    threadref ref;
    IUnknown *punk;
    HRESULT hr;
    LONG refcount;


    if (!pSHSetThreadRef) {
        win_skip("SHSetThreadRef not found\n");
        return;
    }


    hr = pSHSetThreadRef(((void*)0));
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);


    init_threadref(&ref, &refcount);
    AddRef_called = 0;
    refcount = 1;
    hr = pSHSetThreadRef(&ref.IUnknown_iface);
    ok( (hr == S_OK) && (refcount == 1) && (!AddRef_called),
        "got 0x%x with %d, %d (expected S_OK with 1, 0)\n",
        hr, refcount, AddRef_called);


    AddRef_called = 0;
    refcount = 1;
    punk = ((void*)0);
    hr = pSHGetThreadRef(&punk);
    ok( (hr == S_OK) && (punk == &ref.IUnknown_iface) && (refcount == 2) && (AddRef_called == 1),
        "got 0x%x and %p with %d, %d (expected S_OK and %p with 2, 1)\n",
        hr, punk, refcount, AddRef_called, &ref);


    hr = pSHSetThreadRef(((void*)0));
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);


    hr = pSHGetThreadRef(&punk);
    ok( (hr == E_NOINTERFACE) && (punk == ((void*)0)),
        "got 0x%x and %p (expected E_NOINTERFACE and NULL)\n", hr, punk);

}
