#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  nsdoc; } ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

HRESULT FUNC8(HTMLDocumentNode *doc, const WCHAR *tag, nsIDOMHTMLElement **ret)
{
    nsIDOMElement *nselem;
    nsAString tag_str;
    nsresult nsres;

    if(!doc->nsdoc) {
        FUNC2("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    FUNC4(&tag_str, tag);
    nsres = FUNC7(doc->nsdoc, &tag_str, &nselem);
    FUNC3(&tag_str);
    if(FUNC1(nsres)) {
        FUNC0("CreateElement failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC5(nselem, &IID_nsIDOMHTMLElement, (void**)ret);
    FUNC6(nselem);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIDOMHTMLElement iface: %08x\n", nsres);
        return E_FAIL;
    }

    return S_OK;
}