
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t eventid_t ;
struct TYPE_5__ {TYPE_1__** event_table; } ;
typedef TYPE_2__ event_target_t ;
struct TYPE_4__ {size_t handler_cnt; int ** handlers; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int EventTarget ;
typedef size_t DWORD ;
typedef int BSTR ;


 size_t EVENTID_LAST ;
 int FALSE ;
 int IDispatch_Release (int *) ;
 int S_OK ;
 int WARN (char*) ;
 size_t attr_to_eid (int ) ;
 TYPE_2__* get_event_target_data (int *,int ) ;

HRESULT detach_event(EventTarget *event_target, BSTR name, IDispatch *disp)
{
    event_target_t *data;
    eventid_t eid;
    DWORD i = 0;

    eid = attr_to_eid(name);
    if(eid == EVENTID_LAST) {
        WARN("Unknown event\n");
        return S_OK;
    }

    data = get_event_target_data(event_target, FALSE);
    if(!data)
        return S_OK;

    if(!data->event_table[eid])
        return S_OK;

    while(i < data->event_table[eid]->handler_cnt) {
        if(data->event_table[eid]->handlers[i] == disp) {
            IDispatch_Release(data->event_table[eid]->handlers[i]);
            data->event_table[eid]->handlers[i] = ((void*)0);
        }
        i++;
    }

    return S_OK;
}
