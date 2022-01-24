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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(IUnknown *unk, const GUID *grpid, DWORD cmdid, VARIANT *in, VARIANT *out)
{
    IOleCommandTarget *cmdtrg;
    HRESULT hres;

    hres = FUNC2(unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    FUNC3(hres == S_OK, "Could not get IOleCommandTarget interface: %08x\n", hres);

    hres = FUNC0(cmdtrg, grpid, cmdid, 0, in, out);
    FUNC3(hres == S_OK, "Exec failed: %08x\n", hres);

    FUNC1(cmdtrg);
}