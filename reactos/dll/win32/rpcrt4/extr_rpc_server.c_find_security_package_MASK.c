#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_6__ {size_t wRPCID; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ SecPkgInfoW ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (size_t*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  RPC_S_SEC_PKG_ERROR ; 
 int /*<<< orphan*/  RPC_S_UNKNOWN_AUTHN_SERVICE ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RPC_STATUS FUNC6(ULONG auth_type, SecPkgInfoW **packages_buf, SecPkgInfoW **ret)
{
    SECURITY_STATUS sec_status;
    SecPkgInfoW *packages;
    ULONG package_count;
    ULONG i;

    sec_status = FUNC1(&package_count, &packages);
    if (sec_status != SEC_E_OK)
    {
        FUNC0("EnumerateSecurityPackagesW failed with error 0x%08x\n", sec_status);
        return RPC_S_SEC_PKG_ERROR;
    }

    for (i = 0; i < package_count; i++)
        if (packages[i].wRPCID == auth_type)
            break;

    if (i == package_count)
    {
        FUNC4("unsupported AuthnSvc %u\n", auth_type);
        FUNC2(packages);
        return RPC_S_UNKNOWN_AUTHN_SERVICE;
    }

    FUNC3("found package %s for service %u\n", FUNC5(packages[i].Name), auth_type);
    *packages_buf = packages;
    *ret = packages + i;
    return RPC_S_OK;
}