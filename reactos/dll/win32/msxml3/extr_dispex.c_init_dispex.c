
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dispex_static_data_t ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int * data; int * outer; TYPE_1__ IDispatchEx_iface; } ;
typedef int IUnknown ;
typedef TYPE_2__ DispatchEx ;


 int DispatchExVtbl ;

void init_dispex(DispatchEx *dispex, IUnknown *outer, dispex_static_data_t *data)
{
    dispex->IDispatchEx_iface.lpVtbl = &DispatchExVtbl;
    dispex->outer = outer;
    dispex->data = data;
}
