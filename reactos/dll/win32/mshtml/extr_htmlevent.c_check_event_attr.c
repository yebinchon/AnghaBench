
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
typedef int nsAString ;
struct TYPE_10__ {int const* attr_name; } ;
struct TYPE_9__ {int event_target; } ;
struct TYPE_8__ {int window; } ;
typedef int PRUnichar ;
typedef int IDispatch ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;


 int EVENTID_LAST ;
 int IDispatch_Release (int *) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int *,int ,int ) ;
 int TRUE ;
 int debugstr_w (int const*) ;
 TYPE_6__* event_info ;
 int get_elem_attr_value (int *,int const*,int *,int const**) ;
 int get_node (TYPE_1__*,int *,int ,TYPE_2__**) ;
 int node_release (TYPE_2__*) ;
 int nsAString_Finish (int *) ;
 int * script_parse_event (int ,int const*) ;
 int set_event_handler_disp (int *,int,int *) ;

void check_event_attr(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem)
{
    const PRUnichar *attr_value;
    nsAString attr_value_str;
    IDispatch *disp;
    HTMLDOMNode *node;
    int i;
    nsresult nsres;
    HRESULT hres;

    for(i=0; i < EVENTID_LAST; i++) {
        nsres = get_elem_attr_value(nselem, event_info[i].attr_name, &attr_value_str, &attr_value);
        if(NS_SUCCEEDED(nsres)) {
            if(!*attr_value)
                continue;

            TRACE("%p.%s = %s\n", nselem, debugstr_w(event_info[i].attr_name), debugstr_w(attr_value));

            disp = script_parse_event(doc->window, attr_value);
            if(disp) {
                hres = get_node(doc, (nsIDOMNode*)nselem, TRUE, &node);
                if(SUCCEEDED(hres)) {
                    set_event_handler_disp(&node->event_target, i, disp);
                    node_release(node);
                }
                IDispatch_Release(disp);
            }
            nsAString_Finish(&attr_value_str);
        }
    }
}
