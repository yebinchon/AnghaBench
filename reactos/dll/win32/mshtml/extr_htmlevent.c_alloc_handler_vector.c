
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int handler_cnt; } ;
typedef TYPE_1__ handler_vector_t ;
typedef size_t eventid_t ;
struct TYPE_8__ {TYPE_1__** event_table; } ;
typedef TYPE_2__ event_target_t ;
typedef int IDispatch ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* heap_alloc_zero (int) ;
 TYPE_1__* heap_realloc_zero (TYPE_1__*,int) ;

__attribute__((used)) static BOOL alloc_handler_vector(event_target_t *event_target, eventid_t eid, int cnt)
{
    handler_vector_t *new_vector, *handler_vector = event_target->event_table[eid];

    if(handler_vector) {
        if(cnt <= handler_vector->handler_cnt)
            return TRUE;

        new_vector = heap_realloc_zero(handler_vector, sizeof(handler_vector_t) + sizeof(IDispatch*)*cnt);
    }else {
        new_vector = heap_alloc_zero(sizeof(handler_vector_t) + sizeof(IDispatch*)*cnt);
    }

    if(!new_vector)
        return FALSE;

    new_vector->handler_cnt = cnt;
    event_target->event_table[eid] = new_vector;
    return TRUE;
}
