
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct TYPE_6__ {scalar_t__* event_vector; } ;
typedef TYPE_1__ HTMLDocumentNode ;


 int EVENTID_LAST ;
 scalar_t__ FALSE ;
 int detach_nsevent (TYPE_1__*,int ) ;
 TYPE_3__* event_info ;
 int release_nsevents (TYPE_1__*) ;

void detach_events(HTMLDocumentNode *doc)
{
    if(doc->event_vector) {
        int i;

        for(i=0; i < EVENTID_LAST; i++) {
            if(doc->event_vector[i]) {
                detach_nsevent(doc, event_info[i].name);
                doc->event_vector[i] = FALSE;
            }
        }
    }

    release_nsevents(doc);
}
