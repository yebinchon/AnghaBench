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
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CGID_MSHTML ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  OLECMDEXECOPT_DODEFAULT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(IUnknown *unk, DWORD cmdid)
{
    IOleCommandTarget *cmdtrg;
    HRESULT hres;

    hres = FUNC3(unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    FUNC4(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC1(cmdtrg, &CGID_MSHTML, cmdid,
            OLECMDEXECOPT_DODEFAULT, NULL, NULL);
    FUNC4(hres == S_OK, "Exec failed: %08x\n", hres);

    FUNC2(cmdtrg);
}