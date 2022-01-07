
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t eventid_t ;
struct TYPE_9__ {TYPE_1__** event_table; } ;
typedef TYPE_2__ event_target_t ;
typedef int VARIANT ;
struct TYPE_11__ {int attr_name; } ;
struct TYPE_10__ {int dispex; } ;
struct TYPE_8__ {int * handler_prop; } ;
typedef int HRESULT ;
typedef TYPE_3__ EventTarget ;


 int FALSE ;
 int IDispatch_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int VariantClear (int *) ;
 int dispex_get_dprop_ref (int *,int ,int ,int **) ;
 TYPE_7__* event_info ;
 TYPE_2__* get_event_target_data (TYPE_3__*,int ) ;

__attribute__((used)) static void remove_event_handler(EventTarget *event_target, eventid_t eid)
{
    event_target_t *data;
    VARIANT *store;
    HRESULT hres;

    hres = dispex_get_dprop_ref(&event_target->dispex, event_info[eid].attr_name, FALSE, &store);
    if(SUCCEEDED(hres))
        VariantClear(store);

    data = get_event_target_data(event_target, FALSE);
    if(data && data->event_table[eid] && data->event_table[eid]->handler_prop) {
        IDispatch_Release(data->event_table[eid]->handler_prop);
        data->event_table[eid]->handler_prop = ((void*)0);
    }
}
