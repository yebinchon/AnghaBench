
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int eventid_t ;
typedef int VARIANT ;
struct TYPE_5__ {TYPE_1__* doc_node; } ;
struct TYPE_4__ {int node; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;


 int set_node_event (int *,int ,int *) ;

__attribute__((used)) static inline HRESULT set_doc_event(HTMLDocument *doc, eventid_t eid, VARIANT *var)
{
    return set_node_event(&doc->doc_node->node, eid, var);
}
