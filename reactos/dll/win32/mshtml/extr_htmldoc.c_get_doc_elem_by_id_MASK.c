#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT16 ;
struct TYPE_4__ {int /*<<< orphan*/  nsdoc; } ;
typedef  int /*<<< orphan*/  HTMLElement ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int DOCUMENT_POSITION_CONTAINS ; 
 int DOCUMENT_POSITION_PRECEDING ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  IID_nsIDOMElement ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

HRESULT FUNC18(HTMLDocumentNode *doc, const WCHAR *id, HTMLElement **ret)
{
    nsIDOMNodeList *nsnode_list;
    nsIDOMElement *nselem;
    nsIDOMNode *nsnode;
    nsAString id_str;
    nsresult nsres;
    HRESULT hres;

    if(!doc->nsdoc) {
        FUNC5("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    FUNC9(&id_str, id);
    /* get element by id attribute */
    nsres = FUNC11(doc->nsdoc, &id_str, &nselem);
    if(FUNC1(nsres)) {
        FUNC0("GetElementById failed: %08x\n", nsres);
        FUNC8(&id_str);
        return E_FAIL;
    }

    /* get first element by name attribute */
    nsres = FUNC12(doc->nsdoc, &id_str, &nsnode_list);
    FUNC8(&id_str);
    if(FUNC1(nsres)) {
        FUNC0("getElementsByName failed: %08x\n", nsres);
        if(nselem)
            FUNC10(nselem);
        return E_FAIL;
    }

    nsres = FUNC13(nsnode_list, 0, &nsnode);
    FUNC14(nsnode_list);
    FUNC6(nsres == NS_OK);

    if(nsnode && nselem) {
        UINT16 pos;

        nsres = FUNC15(nsnode, (nsIDOMNode*)nselem, &pos);
        if(FUNC3(nsres)) {
            FUNC2("CompareDocumentPosition failed: 0x%08x\n", nsres);
            FUNC17(nsnode);
            FUNC10(nselem);
            return E_FAIL;
        }

        FUNC4("CompareDocumentPosition gave: 0x%x\n", pos);
        if(!(pos & (DOCUMENT_POSITION_PRECEDING | DOCUMENT_POSITION_CONTAINS))) {
            FUNC10(nselem);
            nselem = NULL;
        }
    }

    if(nsnode) {
        if(!nselem) {
            nsres = FUNC16(nsnode, &IID_nsIDOMElement, (void**)&nselem);
            FUNC6(nsres == NS_OK);
        }
        FUNC17(nsnode);
    }

    if(!nselem) {
        *ret = NULL;
        return S_OK;
    }

    hres = FUNC7(doc, nselem, ret);
    FUNC10(nselem);
    return hres;
}