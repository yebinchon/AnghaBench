
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ eventid_t ;
typedef int WCHAR ;
typedef int IDispatch ;
typedef int HTMLDocumentNode ;
typedef int EventTarget ;


 scalar_t__ EVENTID_LAST ;
 int TRACE (char*,int *,int *,int ,int *) ;
 int WARN (char*,int ) ;
 scalar_t__ attr_to_eid (int const*) ;
 int debugstr_w (int const*) ;
 int set_event_handler_disp (int *,scalar_t__,int *) ;

void bind_target_event(HTMLDocumentNode *doc, EventTarget *event_target, const WCHAR *event, IDispatch *disp)
{
    eventid_t eid;

    TRACE("(%p %p %s %p)\n", doc, event_target, debugstr_w(event), disp);

    eid = attr_to_eid(event);
    if(eid == EVENTID_LAST) {
        WARN("Unsupported event %s\n", debugstr_w(event));
        return;
    }

    set_event_handler_disp(event_target, eid, disp);
}
