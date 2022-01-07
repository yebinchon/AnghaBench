
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vars ;
typedef int params ;
typedef int VARIANT ;
typedef scalar_t__ ULONG ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_8__ {int refCount; int * pt; scalar_t__ ptCount; TYPE_1__ IConnectionPointContainer_iface; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_2__ IDispatch_iface; } ;
typedef int IUnknown ;
typedef int IConnectionPoint ;
typedef scalar_t__ HRESULT ;
typedef TYPE_3__ Disp ;
typedef int DWORD ;
typedef int DISPPARAMS ;
typedef TYPE_4__ Contain ;


 int FALSE ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int IID_NULL ;
 scalar_t__ IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int VT_BSTR ;
 int VT_I4 ;
 int contain_vtbl ;
 int disp_vtbl ;
 int memset (int *,int,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pConnectToConnectionPoint (int *,int *,int ,int *,int*,int **) ;
 scalar_t__ pIConnectionPoint_SimpleInvoke (int *,int,int *) ;
 scalar_t__ pSHPackDispParams (int *,int *,int,int ,int,int ,int) ;

__attribute__((used)) static void test_IConnectionPoint(void)
{
    HRESULT rc;
    ULONG ref;
    IConnectionPoint *point;
    Contain *container;
    Disp *dispatch;
    DWORD cookie = 0xffffffff;
    DISPPARAMS params;
    VARIANT vars[10];

    container = HeapAlloc(GetProcessHeap(),0,sizeof(Contain));
    container->IConnectionPointContainer_iface.lpVtbl = &contain_vtbl;
    container->refCount = 1;
    container->ptCount = 0;
    container->pt = ((void*)0);

    dispatch = HeapAlloc(GetProcessHeap(),0,sizeof(Disp));
    dispatch->IDispatch_iface.lpVtbl = &disp_vtbl;
    dispatch->refCount = 1;

    rc = pConnectToConnectionPoint((IUnknown*)dispatch, &IID_NULL, TRUE, (IUnknown*)container, &cookie, &point);
    ok(rc == S_OK, "pConnectToConnectionPoint failed with %x\n",rc);
    ok(point != ((void*)0), "returned ConnectionPoint is NULL\n");
    ok(cookie != 0xffffffff, "invalid cookie returned\n");

    rc = pIConnectionPoint_SimpleInvoke(point,0xa0,((void*)0));
    ok(rc == S_OK, "pConnectToConnectionPoint failed with %x\n",rc);

    memset(&params, 0xc0, sizeof(params));
    memset(vars, 0xc0, sizeof(vars));
    rc = pSHPackDispParams(&params, vars, 2, VT_I4, 0xdeadbeef, VT_BSTR, 0xdeadcafe);
    ok(rc == S_OK, "SHPackDispParams failed: %08x\n", rc);

    rc = pIConnectionPoint_SimpleInvoke(point,0xa1,&params);
    ok(rc == S_OK, "pConnectToConnectionPoint failed with %x\n",rc);

    rc = pConnectToConnectionPoint(((void*)0), &IID_NULL, FALSE, (IUnknown*)container, &cookie, ((void*)0));
    ok(rc == S_OK, "pConnectToConnectionPoint failed with %x\n",rc);




    ref = IUnknown_Release((IUnknown*)container);
    ok(ref == 0, "leftover IConnectionPointContainer reference %i\n",ref);
    ref = IUnknown_Release((IUnknown*)dispatch);
    ok(ref == 0, "leftover IDispatch reference %i\n",ref);
}
