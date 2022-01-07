
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {int refCount; TYPE_2__ IPropertyBag_iface; } ;
typedef TYPE_1__ PropBag ;
typedef int LONG ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DISP_E_BADVARTYPE ;
 scalar_t__ E_INVALIDARG ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 scalar_t__ pSHPropertyBag_ReadLONG (TYPE_2__*,char const*,int*) ;
 int prop_vtbl ;

__attribute__((used)) static void test_SHPropertyBag_ReadLONG(void)
{
    PropBag *pb;
    HRESULT rc;
    LONG out;
    static const WCHAR szName1[] = {'n','a','m','e','1',0};

    pb = HeapAlloc(GetProcessHeap(),0,sizeof(PropBag));
    pb->refCount = 1;
    pb->IPropertyBag_iface.lpVtbl = &prop_vtbl;

    out = 0xfeedface;
    rc = pSHPropertyBag_ReadLONG(((void*)0), szName1, &out);
    ok(rc == E_INVALIDARG || broken(rc == S_OK), "incorrect return %x\n",rc);
    ok(out == 0xfeedface, "value should not have changed\n");
    rc = pSHPropertyBag_ReadLONG(&pb->IPropertyBag_iface, ((void*)0), &out);
    ok(rc == E_INVALIDARG || broken(rc == S_OK) || broken(rc == S_FALSE), "incorrect return %x\n",rc);
    ok(out == 0xfeedface, "value should not have changed\n");
    rc = pSHPropertyBag_ReadLONG(&pb->IPropertyBag_iface, szName1, ((void*)0));
    ok(rc == E_INVALIDARG || broken(rc == S_OK) || broken(rc == S_FALSE), "incorrect return %x\n",rc);
    rc = pSHPropertyBag_ReadLONG(&pb->IPropertyBag_iface, szName1, &out);
    ok(rc == DISP_E_BADVARTYPE || broken(rc == S_OK) || broken(rc == S_FALSE), "incorrect return %x\n",rc);
    ok(out == 0xfeedface || broken(out == 0xfeedfa00), "value should not have changed %x\n",out);
    IUnknown_Release((IUnknown*)pb);
}
