
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VARTYPE ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int result; int vt; TYPE_1__ IDispatch_iface; } ;
typedef TYPE_2__ DummyDispatch ;


 int DummyDispatch_VTable ;
 int S_OK ;

__attribute__((used)) static void init_test_dispatch(VARTYPE vt, DummyDispatch *dispatch)
{
    dispatch->IDispatch_iface.lpVtbl = &DummyDispatch_VTable;
    dispatch->vt = vt;
    dispatch->result = S_OK;
}
