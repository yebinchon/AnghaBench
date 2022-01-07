
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMEventTarget ;
struct TYPE_9__ {int nsIDOMEventListener_iface; } ;
typedef TYPE_3__ nsEventListener ;
typedef int nsAString ;
typedef int cpp_bool ;
typedef int WCHAR ;
struct TYPE_7__ {TYPE_2__* window; } ;
struct TYPE_10__ {TYPE_1__ basedoc; } ;
struct TYPE_8__ {int nswindow; } ;
typedef TYPE_4__ HTMLDocumentNode ;


 int ERR (char*,int ) ;
 int IID_nsIDOMEventTarget ;
 scalar_t__ NS_FAILED (int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMEventTarget_Release (int *) ;
 int nsIDOMEventTarget_RemoveEventListener (int *,int *,int *,int ) ;
 int nsIDOMWindow_QueryInterface (int ,int *,void**) ;

__attribute__((used)) static void detach_nslistener(HTMLDocumentNode *doc, const WCHAR *type, nsEventListener *listener, cpp_bool is_capture)
{
    nsIDOMEventTarget *target;
    nsAString type_str;
    nsresult nsres;

    if(!doc->basedoc.window)
        return;

    nsres = nsIDOMWindow_QueryInterface(doc->basedoc.window->nswindow, &IID_nsIDOMEventTarget, (void**)&target);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMEventTarget interface: %08x\n", nsres);
        return;
    }

    nsAString_InitDepend(&type_str, type);
    nsres = nsIDOMEventTarget_RemoveEventListener(target, &type_str,
            &listener->nsIDOMEventListener_iface, is_capture);
    nsAString_Finish(&type_str);
    nsIDOMEventTarget_Release(target);
    if(NS_FAILED(nsres))
        ERR("RemoveEventTarget failed: %08x\n", nsres);
}
