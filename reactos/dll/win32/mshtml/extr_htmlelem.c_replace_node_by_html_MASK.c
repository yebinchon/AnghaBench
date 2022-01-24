#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMRange ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLDocument ;
typedef  int /*<<< orphan*/  nsIDOMDocumentFragment ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

HRESULT FUNC12(nsIDOMHTMLDocument *nsdoc, nsIDOMNode *nsnode, const WCHAR *html)
{
    nsIDOMDocumentFragment *nsfragment;
    nsIDOMNode *nsparent;
    nsIDOMRange *range;
    nsAString html_str;
    nsresult nsres;
    HRESULT hres = S_OK;

    nsres = FUNC6(nsdoc, &range);
    if(FUNC1(nsres)) {
        FUNC0("CreateRange failed: %08x\n", nsres);
        return E_FAIL;
    }

    FUNC4(&html_str, html);
    FUNC10(range, &html_str, &nsfragment);
    FUNC11(range);
    FUNC3(&html_str);
    if(FUNC1(nsres)) {
        FUNC0("CreateContextualFragment failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC7(nsnode, &nsparent);
    if(FUNC2(nsres) && nsparent) {
        nsIDOMNode *nstmp;

        nsres = FUNC9(nsparent, (nsIDOMNode*)nsfragment, nsnode, &nstmp);
        FUNC8(nsparent);
        if(FUNC1(nsres)) {
            FUNC0("ReplaceChild failed: %08x\n", nsres);
            hres = E_FAIL;
        }else if(nstmp) {
            FUNC8(nstmp);
        }
    }else {
        FUNC0("GetParentNode failed: %08x\n", nsres);
        hres = E_FAIL;
    }

    FUNC5(nsfragment);
    return hres;
}