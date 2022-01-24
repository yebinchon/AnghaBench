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
typedef  int /*<<< orphan*/  IHTMLElement2 ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLCurrentStyle ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IHTMLElement2 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static IHTMLCurrentStyle *FUNC4(unsigned line, IHTMLElement *elem)
{
    IHTMLCurrentStyle *cstyle;
    IHTMLElement2 *elem2;
    HRESULT hres;

    hres = FUNC2(elem, &IID_IHTMLElement2, (void**)&elem2);
    FUNC3(hres == S_OK, "Could not get IHTMLElement2 iface: %08x\n", hres);

    cstyle = NULL;
    hres = FUNC1(elem2, &cstyle);
    FUNC3(hres == S_OK, "get_currentStyle failed: %08x\n", hres);
    FUNC3(cstyle != NULL, "cstyle = %p\n", cstyle);

    FUNC0(elem2);
    return cstyle;
}