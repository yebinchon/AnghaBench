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
typedef  int /*<<< orphan*/  IHTMLDocument3 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLDocument3 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static IHTMLDocument2 *FUNC4(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *frag;
    IHTMLDocument3 *doc3;
    HRESULT hres;

    hres = FUNC0(doc, &IID_IHTMLDocument3, (void**)&doc3);
    FUNC3(hres == S_OK, "Could not get IHTMLDocument3 iface: %08x\n", hres);

    hres = FUNC2(doc3, &frag);
    FUNC1(doc3);
    FUNC3(hres == S_OK, "createDocumentFragment failed: %08x\n", hres);
    FUNC3(frag != NULL, "frag == NULL\n");

    return frag;
}