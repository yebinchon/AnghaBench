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
typedef  int /*<<< orphan*/  passwordW ;
typedef  unsigned char WCHAR ;
typedef  int ULONG ;
typedef  void UCHAR ;
typedef  int SECURITY_STATUS ;
typedef  int /*<<< orphan*/  PSEC_WINNT_AUTH_IDENTITY_OPAQUE ;

/* Variables and functions */
 int CRED_TYPE_DOMAIN_PASSWORD ; 
 int SEC_E_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (unsigned char const*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned char const*,int*,unsigned char const**,unsigned char const**,void**,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (unsigned char const*) ; 

__attribute__((used)) static void FUNC9(void)
{
    static const WCHAR usernameW[] =
        {'u','s','e','r','n','a','m','e',0};
    static const WCHAR domainnameW[] =
        {'d','o','m','a','i','n','n','a','m','e',0};
    static const WCHAR passwordW[] =
        {'p','a','s','s','w','o','r','d',0};
    static const WCHAR targetW[] =
        {'d','o','m','a','i','n','n','a','m','e','\\','u','s','e','r','n','a','m','e',0};
    static const WCHAR target2W[] =
        {'d','o','m','a','i','n','n','a','m','e','2','\\','u','s','e','r','n','a','m','e','2',0};
    const WCHAR *target, *username;
    PSEC_WINNT_AUTH_IDENTITY_OPAQUE id;
    SECURITY_STATUS status;
    ULONG type, size;
    UCHAR *blob;

    if (!&pSspiPrepareForCredWrite)
    {
        FUNC7( "SspiPrepareForCredWrite not exported by secur32.dll\n" );
        return;
    }

    status = FUNC3( usernameW, domainnameW, passwordW, &id );
    FUNC2( status == SEC_E_OK, "got %08x\n", status );

    type = size = 0;
    status = FUNC6( id, NULL, &type, &target, &username, &blob, &size );
    FUNC2( status == SEC_E_OK, "got %08x\n", status );
    FUNC2( type == CRED_TYPE_DOMAIN_PASSWORD, "got %u\n", type );
    FUNC2( !FUNC0( target, targetW ), "got %s\n", FUNC8(target) );
    FUNC2( !FUNC0( username, targetW ), "got %s\n", FUNC8(username) );
    FUNC2( !FUNC1( blob, passwordW, sizeof(passwordW) - sizeof(WCHAR) ), "wrong data\n" );
    FUNC2( size == sizeof(passwordW) - sizeof(WCHAR), "got %u\n", size );
    FUNC5( (void *)target );
    FUNC5( (void *)username );
    FUNC5( blob );

    type = size = 0;
    status = FUNC6( id, target2W, &type, &target, &username, &blob, &size );
    FUNC2( status == SEC_E_OK, "got %08x\n", status );
    FUNC2( type == CRED_TYPE_DOMAIN_PASSWORD, "got %u\n", type );
    FUNC2( !FUNC0( target, target2W ), "got %s\n", FUNC8(target) );
    FUNC2( !FUNC0( username, targetW ), "got %s\n", FUNC8(username) );
    FUNC2( !FUNC1( blob, passwordW, sizeof(passwordW) - sizeof(WCHAR) ), "wrong data\n" );
    FUNC2( size == sizeof(passwordW) - sizeof(WCHAR), "got %u\n", size );
    FUNC5( (void *)target );
    FUNC5( (void *)username );
    FUNC5( blob );

    FUNC4( id );
}