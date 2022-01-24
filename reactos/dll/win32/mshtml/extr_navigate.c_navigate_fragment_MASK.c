#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  selector_formatW ;
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMLocation ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  IHTMLWindow2_iface; TYPE_2__* inner_window; } ;
struct TYPE_12__ {TYPE_4__ base; TYPE_3__* doc_obj; int /*<<< orphan*/  nswindow; } ;
struct TYPE_10__ {scalar_t__ doc_object_service; } ;
struct TYPE_9__ {TYPE_1__* doc; } ;
struct TYPE_8__ {int /*<<< orphan*/  nsdoc; } ;
typedef  int /*<<< orphan*/  IUri ;
typedef  TYPE_5__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  char* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,char const*,char*) ; 

__attribute__((used)) static HRESULT FUNC23(HTMLOuterWindow *window, IUri *uri)
{
    nsIDOMLocation *nslocation;
    nsAString nsfrag_str;
    WCHAR *selector;
    BSTR frag;
    nsresult nsres;
    HRESULT hres;

    const WCHAR selector_formatW[] = {'a','[','i','d','=','"','%','s','"',']',0};

    FUNC21(window, uri);

    nsres = FUNC20(window->nswindow, &nslocation);
    if(FUNC1(nsres) || !nslocation)
        return E_FAIL;

    hres = FUNC4(uri, &frag);
    if(FUNC1(hres)) {
        FUNC18(nslocation);
        return hres;
    }

    FUNC12(&nsfrag_str, frag);
    nsres = FUNC19(nslocation, &nsfrag_str);
    FUNC11(&nsfrag_str);
    FUNC18(nslocation);
    if(FUNC5(nsres))
        FUNC0("SetHash failed: %08x\n", nsres);

    /*
     * IE supports scrolling to anchor elements with "#hash" ids (note that '#' is part of the id),
     * while Gecko scrolls only to elements with "hash" ids. We scroll the page ourselves if
     * a[id="#hash"] element can be found.
     */
    selector = FUNC9(sizeof(selector_formatW)+FUNC8(frag)*sizeof(WCHAR));
    if(selector) {
        nsIDOMElement *nselem = NULL;
        nsAString selector_str;

        FUNC22(selector, selector_formatW, frag);
        FUNC12(&selector_str, selector);
        /* NOTE: Gecko doesn't set result to NULL if there is no match, so nselem must be initialized */
        nsres = FUNC15(window->base.inner_window->doc->nsdoc, &selector_str, &nselem);
        FUNC11(&selector_str);
        FUNC10(selector);
        if(FUNC6(nsres) && nselem) {
            nsIDOMHTMLElement *html_elem;

            nsres = FUNC13(nselem, &IID_nsIDOMHTMLElement, (void**)&html_elem);
            FUNC14(nselem);
            if(FUNC6(nsres)) {
                FUNC17(html_elem, TRUE, 1);
                FUNC16(html_elem);
            }
        }
    }

    FUNC7(frag);

    if(window->doc_obj->doc_object_service) {
        FUNC3(window->doc_obj->doc_object_service, &window->base.IHTMLWindow2_iface, 0x10);
        FUNC2(window->doc_obj->doc_object_service, &window->base.IHTMLWindow2_iface, 0);

    }

    return S_OK;
}