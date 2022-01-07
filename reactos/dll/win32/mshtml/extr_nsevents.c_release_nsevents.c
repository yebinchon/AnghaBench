
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * doc; int load_listener; int keypress_listener; int focus_listener; int blur_listener; } ;
typedef TYPE_1__ nsDocumentEventListener ;
struct TYPE_9__ {TYPE_1__* nsevent_listener; } ;
typedef TYPE_2__ HTMLDocumentNode ;


 int FALSE ;
 int TRACE (char*,TYPE_2__*,TYPE_1__*) ;
 int TRUE ;
 int blurW ;
 int detach_nslistener (TYPE_2__*,int ,int *,int ) ;
 int focusW ;
 int keypressW ;
 int loadW ;
 int release_listener (TYPE_1__*) ;

void release_nsevents(HTMLDocumentNode *doc)
{
    nsDocumentEventListener *listener = doc->nsevent_listener;

    TRACE("%p %p\n", doc, doc->nsevent_listener);

    if(!listener)
        return;

    detach_nslistener(doc, blurW, &listener->blur_listener, TRUE);
    detach_nslistener(doc, focusW, &listener->focus_listener, TRUE);
    detach_nslistener(doc, keypressW, &listener->keypress_listener, FALSE);
    detach_nslistener(doc, loadW, &listener->load_listener, TRUE);

    listener->doc = ((void*)0);
    release_listener(listener);
    doc->nsevent_listener = ((void*)0);
}
