#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stub_manager {int dummy; } ;
struct ifstub {int dummy; } ;
struct TYPE_4__ {int Data2; scalar_t__ Data4; } ;
typedef  int /*<<< orphan*/  OXID ;
typedef  TYPE_1__ IPID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  APARTMENT ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_E_INVALID_OBJECT ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct stub_manager* FUNC4 (int /*<<< orphan*/ *,TYPE_1__ const*,struct ifstub**) ; 

__attribute__((used)) static HRESULT FUNC5(const IPID *ipid, APARTMENT **stub_apt,
                              struct stub_manager **stubmgr_ret, struct ifstub **ifstub)
{
    /* FIXME: hack for IRemUnknown */
    if (ipid->Data2 == 0xffff)
        *stub_apt = FUNC1(*(const OXID *)ipid->Data4, TRUE);
    else
        *stub_apt = FUNC2(ipid->Data2);
    if (!*stub_apt)
    {
        FUNC0("Couldn't find apartment corresponding to TID 0x%04x\n", ipid->Data2);
        return RPC_E_INVALID_OBJECT;
    }
    *stubmgr_ret = FUNC4(*stub_apt, ipid, ifstub);
    if (!*stubmgr_ret)
    {
        FUNC3(*stub_apt);
        *stub_apt = NULL;
        return RPC_E_INVALID_OBJECT;
    }
    return S_OK;
}