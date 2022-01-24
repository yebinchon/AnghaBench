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
typedef  int /*<<< orphan*/  SspiData ;
typedef  int /*<<< orphan*/  SecPkgInfoA ;
typedef  int /*<<< orphan*/  SEC_CHAR ;
typedef  scalar_t__ SECURITY_STATUS ;

/* Variables and functions */
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static SECURITY_STATUS FUNC6(SspiData *sspi_data, SEC_CHAR *provider)
{
    SECURITY_STATUS ret;
    SecPkgInfoA *sec_pkg_info;

    FUNC5("Running setupFakeServer\n");

    ret = FUNC3(provider, &sec_pkg_info);

    FUNC1(ret == SEC_E_OK, "QuerySecurityPackageInfo returned %s\n", FUNC0(ret));

    ret = FUNC4(sspi_data, sec_pkg_info);
    FUNC2(sec_pkg_info);
    
    return ret;
}