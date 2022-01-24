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
struct sspi_data {int /*<<< orphan*/  cred; } ;
typedef  int /*<<< orphan*/  TimeStamp ;
typedef  int /*<<< orphan*/  SecPkgInfoA ;
typedef  int /*<<< orphan*/  SEC_CHAR ;
typedef  scalar_t__ SECURITY_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SECPKG_CRED_INBOUND ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sspi_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static SECURITY_STATUS FUNC6( struct sspi_data *data, SEC_CHAR *provider )
{
    SECURITY_STATUS ret;
    SecPkgInfoA *info;
    TimeStamp ttl;

    FUNC5( "setting up server\n" );

    ret = FUNC2( provider, &info );
    FUNC3( ret == SEC_E_OK, "QuerySecurityPackageInfo returned %08x\n", ret );

    FUNC4( data, info );
    FUNC1( info );

    ret = FUNC0( NULL, provider, SECPKG_CRED_INBOUND, NULL,
                                     NULL, NULL, NULL, &data->cred, &ttl );
    FUNC3( ret == SEC_E_OK, "AcquireCredentialsHandleA returned %08x\n", ret );
    return ret;
}