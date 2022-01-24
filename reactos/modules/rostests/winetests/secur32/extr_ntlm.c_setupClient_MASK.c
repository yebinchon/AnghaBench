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
typedef  int /*<<< orphan*/  TimeStamp ;
struct TYPE_4__ {int /*<<< orphan*/  cred; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SspiData ;
typedef  int /*<<< orphan*/  SecPkgInfoA ;
typedef  int /*<<< orphan*/  SEC_CHAR ;
typedef  scalar_t__ SECURITY_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  SECPKG_CRED_OUTBOUND ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static SECURITY_STATUS FUNC7(SspiData *sspi_data, SEC_CHAR *provider)
{
    SECURITY_STATUS ret;
    TimeStamp ttl;
    SecPkgInfoA *sec_pkg_info;

    FUNC6("Running setupClient\n");
    
    ret = FUNC4(provider, &sec_pkg_info);

    FUNC1(ret == SEC_E_OK, "QuerySecurityPackageInfo returned %s\n", FUNC0(ret));

    FUNC5(sspi_data, sec_pkg_info);
    FUNC3(sec_pkg_info);
    
    if((ret = FUNC2(NULL, provider, SECPKG_CRED_OUTBOUND,
            NULL, sspi_data->id, NULL, NULL, &sspi_data->cred, &ttl))
            != SEC_E_OK)
    {
        FUNC6("AcquireCredentialsHandle() returned %s\n", FUNC0(ret));
    }

    FUNC1(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            FUNC0(ret));

    return ret;
}