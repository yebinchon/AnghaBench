
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int event_vector; } ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int HRESULT ;
typedef int BOOL ;


 int EVENTID_LAST ;
 int EVENT_HASDEFAULTHANDLERS ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int ensure_doc_nsevent_handler (TYPE_1__*,unsigned int) ;
 TYPE_3__* event_info ;
 int heap_alloc_zero (int) ;
 int init_nsevents (TYPE_1__*) ;

HRESULT doc_init_events(HTMLDocumentNode *doc)
{
    unsigned i;
    HRESULT hres;

    doc->event_vector = heap_alloc_zero(EVENTID_LAST*sizeof(BOOL));
    if(!doc->event_vector)
        return E_OUTOFMEMORY;

    init_nsevents(doc);

    for(i=0; i < EVENTID_LAST; i++) {
        if(event_info[i].flags & EVENT_HASDEFAULTHANDLERS) {
            hres = ensure_doc_nsevent_handler(doc, i);
            if(FAILED(hres))
                return hres;
        }
    }

    return S_OK;
}
