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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLDocument2 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static IHTMLDocument2 *FUNC5(unsigned line, IUnknown *unk)
{
    IHTMLElement *elem = FUNC3(line, unk);
    IHTMLDocument2 *doc;
    IDispatch *disp;
    HRESULT hres;

    disp = NULL;
    hres = FUNC2(elem, &disp);
    FUNC4(hres == S_OK, "get_document failed: %08x\n", hres);
    FUNC4(disp != NULL, "disp == NULL\n");

    hres = FUNC0(disp, &IID_IHTMLDocument2, (void**)&doc);
    FUNC1(disp);
    FUNC4(hres == S_OK, "Could not get IHTMLDocument2 iface: %08x\n", hres);

    return doc;
}