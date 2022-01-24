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
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsAString ;
struct TYPE_3__ {int /*<<< orphan*/  nsdoc; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMNode ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC13(HTMLDocumentNode *This, char **str)
{
    nsIDOMNode *nsnode;
    LPCWSTR strw;
    nsAString nsstr;
    nsresult nsres;
    HRESULT hres;

    if(!This->nsdoc) {
        FUNC4("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    nsres = FUNC10(This->nsdoc, &IID_nsIDOMNode, (void**)&nsnode);
    if(FUNC2(nsres)) {
        FUNC0("Could not get nsIDOMNode failed: %08x\n", nsres);
        return E_FAIL;
    }

    FUNC9(&nsstr, NULL);
    hres = FUNC12(nsnode, &nsstr);
    FUNC11(nsnode);
    if(FUNC1(hres)) {
        FUNC7(&nsstr);
        return hres;
    }

    FUNC8(&nsstr, &strw);
    FUNC3("%s\n", FUNC5(strw));

    *str = FUNC6(strw);

    FUNC7(&nsstr);

    if(!*str)
        return E_OUTOFMEMORY;
    return S_OK;
}