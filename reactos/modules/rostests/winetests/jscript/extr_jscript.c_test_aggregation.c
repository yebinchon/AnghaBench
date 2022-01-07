
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CLASS_E_NOAGGREGATION ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_JScript ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 int IID_IUnknown ;
 scalar_t__ broken (int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_aggregation(void)
{
    IUnknown *unk = (IUnknown*)0xdeadbeef;
    HRESULT hres;

    hres = CoCreateInstance(&CLSID_JScript, (IUnknown*)0xdeadbeef, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUnknown, (void**)&unk);
    ok(hres == CLASS_E_NOAGGREGATION,
       "CoCreateInstance failed: %08x, expected CLASS_E_NOAGGREGATION\n", hres);
    ok(!unk || broken(unk != ((void*)0)), "unk = %p\n", unk);
}
