#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  (* constructor ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ;} ;
typedef  TYPE_2__ tag_desc_t ;
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_11__ {int /*<<< orphan*/ * vtbl; } ;
struct TYPE_13__ {TYPE_1__ node; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  TYPE_3__ HTMLElement ;
typedef  int /*<<< orphan*/  HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HTMLElementImplVtbl ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTMLElement_dispex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 

HRESULT FUNC15(HTMLDocumentNode *doc, nsIDOMNode *nsnode, BOOL use_generic, HTMLElement **ret)
{
    nsIDOMHTMLElement *nselem;
    nsAString class_name_str;
    const PRUnichar *class_name;
    const tag_desc_t *tag;
    HTMLElement *elem;
    nsresult nsres;
    HRESULT hres;

    nsres = FUNC13(nsnode, &IID_nsIDOMHTMLElement, (void**)&nselem);
    if(FUNC3(nsres))
        return E_FAIL;

    FUNC10(&class_name_str, NULL);
    FUNC11(nselem, &class_name_str);

    FUNC9(&class_name_str, &class_name);

    tag = FUNC6(class_name);
    if(tag) {
        hres = tag->constructor(doc, nselem, &elem);
    }else if(use_generic) {
        hres = FUNC2(doc, nselem, &elem);
    }else {
        elem = FUNC7(sizeof(HTMLElement));
        if(elem) {
            elem->node.vtbl = &HTMLElementImplVtbl;
            FUNC1(elem, doc, nselem, &HTMLElement_dispex);
            hres = S_OK;
        }else {
            hres = E_OUTOFMEMORY;
        }
    }

    FUNC4("%s ret %p\n", FUNC5(class_name), elem);

    FUNC12(nselem);
    FUNC8(&class_name_str);
    if(FUNC0(hres))
        return hres;

    *ret = elem;
    return S_OK;
}