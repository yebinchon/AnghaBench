
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t eventid_t ;
struct TYPE_6__ {TYPE_1__** event_table; } ;
typedef TYPE_2__ event_target_t ;
struct TYPE_5__ {int * handler_prop; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int EventTarget ;


 int E_OUTOFMEMORY ;
 int IDispatch_AddRef (int *) ;
 int S_OK ;
 int TRUE ;
 int alloc_handler_vector (TYPE_2__*,size_t,int ) ;
 int bind_event (int *,size_t) ;
 TYPE_2__* get_event_target_data (int *,int ) ;
 int remove_event_handler (int *,size_t) ;

__attribute__((used)) static HRESULT set_event_handler_disp(EventTarget *event_target, eventid_t eid, IDispatch *disp)
{
    event_target_t *data;

    remove_event_handler(event_target, eid);
    if(!disp)
        return S_OK;

    data = get_event_target_data(event_target, TRUE);
    if(!data)
        return E_OUTOFMEMORY;

    if(!alloc_handler_vector(data, eid, 0))
        return E_OUTOFMEMORY;

    data->event_table[eid]->handler_prop = disp;
    IDispatch_AddRef(disp);

    bind_event(event_target, eid);
    return S_OK;
}
