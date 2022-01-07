
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** event_table; } ;
typedef TYPE_2__ event_target_t ;
struct TYPE_5__ {unsigned int handler_cnt; scalar_t__* handlers; scalar_t__ handler_prop; } ;


 int EVENTID_LAST ;
 int IDispatch_Release (scalar_t__) ;
 int heap_free (TYPE_2__*) ;

void release_event_target(event_target_t *event_target)
{
    int i;
    unsigned int j;

    for(i=0; i < EVENTID_LAST; i++) {
        if(event_target->event_table[i]) {
            if(event_target->event_table[i]->handler_prop)
                IDispatch_Release(event_target->event_table[i]->handler_prop);
            for(j=0; j < event_target->event_table[i]->handler_cnt; j++)
                if(event_target->event_table[i]->handlers[j])
                    IDispatch_Release(event_target->event_table[i]->handlers[j]);
        }
    }

    heap_free(event_target);
}
