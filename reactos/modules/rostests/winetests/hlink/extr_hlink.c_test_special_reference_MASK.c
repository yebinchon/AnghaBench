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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/ * E_NOTIMPL ; 
 int HLSR_HISTORYFOLDER ; 
 int HLSR_HOME ; 
 int HLSR_SEARCHPAGE ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    LPWSTR ref;
    HRESULT hres;

    hres = FUNC1(HLSR_HOME, &ref);
    FUNC2(hres == S_OK, "HlinkGetSpecialReference(HLSR_HOME) failed: %08x\n", hres);
    FUNC2(ref != NULL, "ref == NULL\n");
    FUNC0(ref);

    hres = FUNC1(HLSR_SEARCHPAGE, &ref);
    FUNC2(hres == S_OK, "HlinkGetSpecialReference(HLSR_SEARCHPAGE) failed: %08x\n", hres);
    FUNC2(ref != NULL, "ref == NULL\n");
    FUNC0(ref);

    ref = (void*)0xdeadbeef;
    hres = FUNC1(HLSR_HISTORYFOLDER, &ref);
    FUNC2(hres == E_NOTIMPL, "HlinkGetSpecialReference(HLSR_HISTORYFOLDER) failed: %08x\n", hres);
    FUNC2(ref == NULL, "ref=%p\n", ref);

    ref = (void*)0xdeadbeef;
    hres = FUNC1(4, &ref);
    FUNC2(hres == E_INVALIDARG, "HlinkGetSpecialReference(HLSR_HISTORYFOLDER) failed: %08x\n", hres);
    FUNC2(ref == NULL, "ref=%p\n", ref);
}