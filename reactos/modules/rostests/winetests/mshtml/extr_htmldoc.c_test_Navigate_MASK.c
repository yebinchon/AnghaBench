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
typedef  int /*<<< orphan*/  IHlinkTarget ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ActivateMe ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHlinkTarget ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(IHTMLDocument2 *doc)
{
    IHlinkTarget *hlink;
    HRESULT hres;

    hres = FUNC1(doc, &IID_IHlinkTarget, (void**)&hlink);
    FUNC5(hres == S_OK, "QueryInterface(IID_IHlinkTarget) failed: %08x\n", hres);

    FUNC4(ActivateMe);
    hres = FUNC2(hlink, 0, NULL);
    FUNC5(hres == S_OK, "Navigate failed: %08x\n", hres);
    FUNC0(ActivateMe);

    FUNC3(hlink);
}