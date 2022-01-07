
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t eventid_t ;
typedef int WCHAR ;
typedef int VARIANT_BOOL ;
typedef int VARIANT ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int nsnode; int doc; } ;
struct TYPE_9__ {int IHTMLEventObj_iface; } ;
typedef int IHTMLEventObj ;
typedef TYPE_1__ HTMLEventObj ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;


 int ERR (char*) ;
 size_t EVENTID_LAST ;
 int EVENT_DEFAULTLISTENER ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IDispatch_QueryInterface (scalar_t__,int *,void**) ;
 int IHTMLEventObj_Release (int *) ;
 int IID_IHTMLEventObj ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRUE ;
 int VARIANT_TRUE ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ VT_EMPTY ;
 scalar_t__ VT_ERROR ;
 scalar_t__ V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int WARN (char*,int ) ;
 size_t attr_to_eid (int const*) ;
 int debugstr_variant (int *) ;
 int debugstr_w (int const*) ;
 TYPE_7__* event_info ;
 int fire_event (int ,size_t,int ,int ,int *,int *) ;
 int fire_event_obj (int ,size_t,TYPE_1__*,int ,int *) ;
 int set_event_info (TYPE_1__*,TYPE_2__*,size_t,int *) ;
 TYPE_1__* unsafe_impl_from_IHTMLEventObj (int *) ;

HRESULT dispatch_event(HTMLDOMNode *node, const WCHAR *event_name, VARIANT *event_var, VARIANT_BOOL *cancelled)
{
    HTMLEventObj *event_obj = ((void*)0);
    eventid_t eid;
    HRESULT hres;

    eid = attr_to_eid(event_name);
    if(eid == EVENTID_LAST) {
        WARN("unknown event %s\n", debugstr_w(event_name));
        return E_INVALIDARG;
    }

    if(event_var && V_VT(event_var) != VT_EMPTY && V_VT(event_var) != VT_ERROR) {
        if(V_VT(event_var) != VT_DISPATCH) {
            FIXME("event_var %s not supported\n", debugstr_variant(event_var));
            return E_NOTIMPL;
        }

        if(V_DISPATCH(event_var)) {
            IHTMLEventObj *event_iface;

            hres = IDispatch_QueryInterface(V_DISPATCH(event_var), &IID_IHTMLEventObj, (void**)&event_iface);
            if(FAILED(hres)) {
                FIXME("No IHTMLEventObj iface\n");
                return hres;
            }

            event_obj = unsafe_impl_from_IHTMLEventObj(event_iface);
            if(!event_obj) {
                ERR("Not our IHTMLEventObj?\n");
                IHTMLEventObj_Release(event_iface);
                return E_FAIL;
            }
        }
    }

    if(event_obj) {
        hres = set_event_info(event_obj, node, eid, ((void*)0));
        if(SUCCEEDED(hres))
            fire_event_obj(node->doc, eid, event_obj, node->nsnode, ((void*)0));

        IHTMLEventObj_Release(&event_obj->IHTMLEventObj_iface);
        if(FAILED(hres))
            return hres;
    }else {
        if(!(event_info[eid].flags & EVENT_DEFAULTLISTENER)) {
            FIXME("not EVENT_DEFAULTEVENTHANDLER\n");
            return E_NOTIMPL;
        }

        fire_event(node->doc, eid, TRUE, node->nsnode, ((void*)0), ((void*)0));
    }

    *cancelled = VARIANT_TRUE;
    return S_OK;
}
