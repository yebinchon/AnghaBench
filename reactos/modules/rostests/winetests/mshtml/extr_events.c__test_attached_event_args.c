
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int VARIANT ;
struct TYPE_3__ {int cArgs; int * rgvarg; int rgdispidNamedArgs; int cNamedArgs; } ;
typedef int IUnknown ;
typedef int IHTMLEventObj ;
typedef int EXCEPINFO ;
typedef TYPE_1__ DISPPARAMS ;
typedef scalar_t__ DISPID ;


 scalar_t__ DISPATCH_METHOD ;
 scalar_t__ DISPID_VALUE ;
 int IHTMLEventObj_Release (int *) ;
 int VT_DISPATCH ;
 int VT_EMPTY ;
 int * V_DISPATCH (int *) ;
 int V_VT (int *) ;
 int * _get_event_obj (unsigned int) ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void _test_attached_event_args(unsigned line, DISPID id, WORD wFlags, DISPPARAMS *pdp,
        VARIANT *pvarRes, EXCEPINFO *pei)
{
    IHTMLEventObj *event;

    ok(id == DISPID_VALUE, "id = %d\n", id);
    ok(wFlags == DISPATCH_METHOD, "wFlags = %x\n", wFlags);
    ok(pdp != ((void*)0), "pDispParams == NULL\n");
    ok(pdp->cArgs == 1, "pdp->cArgs = %d\n", pdp->cArgs);
    ok(!pdp->cNamedArgs, "pdp->cNamedArgs = %d\n", pdp->cNamedArgs);
    ok(!pdp->rgdispidNamedArgs, "pdp->rgdispidNamedArgs = %p\n", pdp->rgdispidNamedArgs);
    ok(pdp->rgvarg != ((void*)0), "rgvarg = NULL\n");
    ok(pvarRes != ((void*)0), "pvarRes = NULL\n");
    ok(pei != ((void*)0), "pei = NULL\n");
    ok(V_VT(pvarRes) == VT_EMPTY, "V_VT(pVarRes) = %d\n", V_VT(pvarRes));
    ok(V_VT(pdp->rgvarg) == VT_DISPATCH, "V_VT(pdp->rgvarg) = %d\n", V_VT(pdp->rgvarg));
    ok(V_DISPATCH(pdp->rgvarg) != ((void*)0), "V_DISPATCH(pdp->rgvarg) = %p\n", V_DISPATCH(pdp->rgvarg));

    event = _get_event_obj(line);
    ok(iface_cmp((IUnknown*)event, (IUnknown*)V_DISPATCH(pdp->rgvarg)), "event != arg0\n");
    IHTMLEventObj_Release(event);
}
