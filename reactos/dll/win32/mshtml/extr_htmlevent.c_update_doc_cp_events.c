
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cp_static_data_t ;
struct TYPE_2__ {int flags; int dispid; } ;
typedef int HTMLDocumentNode ;


 int EVENTID_LAST ;
 int EVENT_DEFAULTLISTENER ;
 int ensure_doc_nsevent_handler (int *,int) ;
 TYPE_1__* event_info ;
 scalar_t__ is_cp_event (int *,int ) ;

void update_doc_cp_events(HTMLDocumentNode *doc, cp_static_data_t *cp)
{
    int i;

    for(i=0; i < EVENTID_LAST; i++) {
        if((event_info[i].flags & EVENT_DEFAULTLISTENER) && is_cp_event(cp, event_info[i].dispid))
            ensure_doc_nsevent_handler(doc, i);
    }
}
