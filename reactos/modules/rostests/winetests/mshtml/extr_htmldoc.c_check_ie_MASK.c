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
typedef  int /*<<< orphan*/  IHTMLDocument7 ;
typedef  int /*<<< orphan*/  IHTMLDocument5 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLDocument5 ; 
 int /*<<< orphan*/  IID_IHTMLDocument7 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  is_ie9plus ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC7(void)
{
    IHTMLDocument2 *doc;
    IHTMLDocument5 *doc5;
    IHTMLDocument7 *doc7;
    HRESULT hres;

    doc = FUNC4();
    if(!doc)
        return FALSE;

    hres = FUNC0(doc, &IID_IHTMLDocument7, (void**)&doc7);
    if(FUNC3(hres)) {
        is_ie9plus = TRUE;
        FUNC2(doc7);
    }

    FUNC6("is_ie9plus %x\n", is_ie9plus);

    hres = FUNC0(doc, &IID_IHTMLDocument5, (void**)&doc5);
    if(FUNC3(hres))
        FUNC1(doc5);

    FUNC5(doc);
    return FUNC3(hres);
}