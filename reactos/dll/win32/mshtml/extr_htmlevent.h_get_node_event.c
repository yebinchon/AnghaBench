
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int eventid_t ;
typedef int VARIANT ;
struct TYPE_3__ {int event_target; } ;
typedef TYPE_1__ HTMLDOMNode ;
typedef int HRESULT ;


 int get_event_handler (int *,int ,int *) ;

__attribute__((used)) static inline HRESULT get_node_event(HTMLDOMNode *node, eventid_t eid, VARIANT *var)
{
    return get_event_handler(&node->event_target, eid, var);
}
