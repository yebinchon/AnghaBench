
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int selector_formatW ;
typedef int nsresult ;
typedef int nsIDOMLocation ;
typedef int nsIDOMHTMLElement ;
typedef int nsIDOMElement ;
typedef int nsAString ;
typedef char WCHAR ;
struct TYPE_11__ {int IHTMLWindow2_iface; TYPE_2__* inner_window; } ;
struct TYPE_12__ {TYPE_4__ base; TYPE_3__* doc_obj; int nswindow; } ;
struct TYPE_10__ {scalar_t__ doc_object_service; } ;
struct TYPE_9__ {TYPE_1__* doc; } ;
struct TYPE_8__ {int nsdoc; } ;
typedef int IUri ;
typedef TYPE_5__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef char* BSTR ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int IDocObjectService_FireDocumentComplete (scalar_t__,int *,int ) ;
 int IDocObjectService_FireNavigateComplete2 (scalar_t__,int *,int) ;
 int IID_nsIDOMHTMLElement ;
 int IUri_GetFragment (int *,char**) ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int S_OK ;
 int SysFreeString (char*) ;
 int SysStringLen (char*) ;
 int TRUE ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,char*) ;
 int nsIDOMElement_QueryInterface (int *,int *,void**) ;
 int nsIDOMElement_Release (int *) ;
 int nsIDOMHTMLDocument_QuerySelector (int ,int *,int **) ;
 int nsIDOMHTMLElement_Release (int *) ;
 int nsIDOMHTMLElement_ScrollIntoView (int *,int ,int) ;
 int nsIDOMLocation_Release (int *) ;
 int nsIDOMLocation_SetHash (int *,int *) ;
 int nsIDOMWindow_GetLocation (int ,int **) ;
 int set_current_uri (TYPE_5__*,int *) ;
 int sprintfW (char*,char const*,char*) ;

__attribute__((used)) static HRESULT navigate_fragment(HTMLOuterWindow *window, IUri *uri)
{
    nsIDOMLocation *nslocation;
    nsAString nsfrag_str;
    WCHAR *selector;
    BSTR frag;
    nsresult nsres;
    HRESULT hres;

    const WCHAR selector_formatW[] = {'a','[','i','d','=','"','%','s','"',']',0};

    set_current_uri(window, uri);

    nsres = nsIDOMWindow_GetLocation(window->nswindow, &nslocation);
    if(FAILED(nsres) || !nslocation)
        return E_FAIL;

    hres = IUri_GetFragment(uri, &frag);
    if(FAILED(hres)) {
        nsIDOMLocation_Release(nslocation);
        return hres;
    }

    nsAString_InitDepend(&nsfrag_str, frag);
    nsres = nsIDOMLocation_SetHash(nslocation, &nsfrag_str);
    nsAString_Finish(&nsfrag_str);
    nsIDOMLocation_Release(nslocation);
    if(NS_FAILED(nsres))
        ERR("SetHash failed: %08x\n", nsres);






    selector = heap_alloc(sizeof(selector_formatW)+SysStringLen(frag)*sizeof(WCHAR));
    if(selector) {
        nsIDOMElement *nselem = ((void*)0);
        nsAString selector_str;

        sprintfW(selector, selector_formatW, frag);
        nsAString_InitDepend(&selector_str, selector);

        nsres = nsIDOMHTMLDocument_QuerySelector(window->base.inner_window->doc->nsdoc, &selector_str, &nselem);
        nsAString_Finish(&selector_str);
        heap_free(selector);
        if(NS_SUCCEEDED(nsres) && nselem) {
            nsIDOMHTMLElement *html_elem;

            nsres = nsIDOMElement_QueryInterface(nselem, &IID_nsIDOMHTMLElement, (void**)&html_elem);
            nsIDOMElement_Release(nselem);
            if(NS_SUCCEEDED(nsres)) {
                nsIDOMHTMLElement_ScrollIntoView(html_elem, TRUE, 1);
                nsIDOMHTMLElement_Release(html_elem);
            }
        }
    }

    SysFreeString(frag);

    if(window->doc_obj->doc_object_service) {
        IDocObjectService_FireNavigateComplete2(window->doc_obj->doc_object_service, &window->base.IHTMLWindow2_iface, 0x10);
        IDocObjectService_FireDocumentComplete(window->doc_obj->doc_object_service, &window->base.IHTMLWindow2_iface, 0);

    }

    return S_OK;
}
