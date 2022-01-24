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
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IConnectionPointContainer ;
typedef  int /*<<< orphan*/  IConnectionPoint ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IConnectionPointContainer ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(IUnknown *unk, REFIID riid, IUnknown *unk_advise)
{
    IConnectionPointContainer *container;
    IConnectionPoint *cp;
    DWORD cookie;
    HRESULT hres;

    hres = FUNC4(unk, &IID_IConnectionPointContainer, (void**)&container);
    FUNC5(hres == S_OK, "QueryInterface(IID_IConnectionPointContainer) failed: %08x\n", hres);

    hres = FUNC0(container, riid, &cp);
    FUNC1(container);
    FUNC5(hres == S_OK, "FindConnectionPoint failed: %08x\n", hres);

    hres = FUNC2(cp, unk_advise, &cookie);
    FUNC3(cp);
    FUNC5(hres == S_OK, "Advise failed: %08x\n", hres);
}