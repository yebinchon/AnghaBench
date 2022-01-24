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
typedef  int /*<<< orphan*/  ITargetContainer ;
typedef  int /*<<< orphan*/  IOleContainer ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleContainer ; 
 int /*<<< orphan*/  IID_ITargetContainer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(IHTMLDocument2 *doc)
{
    IOleContainer *ole_container, *doc_ole_container;
    ITargetContainer *target_container;
    HRESULT hres;

    hres = FUNC0(doc, &IID_ITargetContainer, (void**)&target_container);
    FUNC5(hres == S_OK, "Could not get ITargetContainer iface: %08x\n", hres);

    hres = FUNC0(doc, &IID_IOleContainer, (void**)&doc_ole_container);
    FUNC5(hres == S_OK, "Could not get ITargetContainer iface: %08x\n", hres);

    ole_container = (void*)0xdeadbeef;
    hres = FUNC2(target_container, &ole_container);
    FUNC5(hres == S_OK, "GetFramesContainer failed: %08x\n", hres);
    FUNC5(ole_container != NULL, "ole_container == NULL\n");
    FUNC5(FUNC4((IUnknown*)ole_container, (IUnknown*)doc_ole_container), "ole_container != doc_ole_container\n");
    FUNC6(ole_container);
    FUNC1(ole_container);

    FUNC3(target_container);
    FUNC1(doc_ole_container);
}