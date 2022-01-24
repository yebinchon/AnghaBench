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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRIPTSTATE_UNINITIALIZED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    IActiveScript *script;
    ULONG ref;
    HRESULT hres;

    script = FUNC2();

    hres = FUNC1(script, SCRIPTSTATE_UNINITIALIZED);
    FUNC3(hres == S_OK, "SetScriptState(SCRIPTSTATE_UNINITIALIZED) failed: %08x\n", hres);

    ref = FUNC0(script);
    FUNC3(!ref, "ref = %d\n", ref);
}