#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  startup ;
struct TYPE_7__ {int /*<<< orphan*/  hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int E_FAIL ; 
 int E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  Object ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int Object_ref ; 
 int FUNC4 (int) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const char *name)
{
    PROCESS_INFORMATION proc;
    STARTUPINFOA startup;
    char cmdline[MAX_PATH];
    IUnknown *unk;
    HRESULT hres;
    LRESULT lres;

    lres = FUNC2(NULL, 0, 0);
    FUNC6(lres == E_INVALIDARG, "got %lx\n", lres);

    hres = FUNC3(0, &IID_IUnknown, 0, (void**)&unk);
    FUNC6(hres == E_FAIL, "got %x\n", hres);
    hres = FUNC3(0x10000, &IID_IUnknown, 0, (void**)&unk);
    FUNC6(hres == E_FAIL, "got %x\n", hres);

    FUNC6(Object_ref == 1, "Object_ref = %d\n", Object_ref);
    lres = FUNC2(&IID_IUnknown, 0, &Object);
    FUNC6(FUNC4(lres), "got %lx\n", lres);
    FUNC6(Object_ref > 1, "Object_ref = %d\n", Object_ref);

    hres = FUNC3(lres, &IID_IUnknown, 0, (void**)&unk);
    FUNC6(hres == S_OK, "hres = %x\n", hres);
    FUNC6(unk == &Object, "unk != &Object\n");
    FUNC1(unk);
    FUNC6(Object_ref == 1, "Object_ref = %d\n", Object_ref);

    lres = FUNC2(&IID_IUnknown, 0, &Object);
    FUNC6(FUNC4(lres), "got %lx\n", lres);
    FUNC6(Object_ref > 1, "Object_ref = %d\n", Object_ref);

    FUNC7(cmdline, "\"%s\" main ObjectFromLresult %lx", name, lres);
    FUNC5(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);
    FUNC0(NULL, cmdline, NULL, NULL, FALSE, 0, NULL, NULL, &startup, &proc);
    FUNC8(proc.hProcess);
    FUNC6(Object_ref == 1, "Object_ref = %d\n", Object_ref);
}