
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VARTYPE ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int bFailInvoke; int vt; int ref; TYPE_1__ IDispatch_iface; } ;
typedef int LONG ;
typedef TYPE_2__ DummyDispatch ;


 int DummyDispatch_VTable ;
 int FALSE ;

__attribute__((used)) static void init_test_dispatch(LONG ref, VARTYPE vt, DummyDispatch *dispatch)
{
    dispatch->IDispatch_iface.lpVtbl = &DummyDispatch_VTable;
    dispatch->ref = ref;
    dispatch->vt = vt;
    dispatch->bFailInvoke = FALSE;
}
