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
typedef  unsigned char WCHAR ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  int /*<<< orphan*/ * PSEC_WINNT_AUTH_IDENTITY_OPAQUE ;

/* Variables and functions */
 scalar_t__ SEC_E_INVALID_TOKEN ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char const**,unsigned char const**,unsigned char const**) ; 
 scalar_t__ FUNC3 (unsigned char const*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR username[] = {'u','s','e','r','n','a','m','e',0};
    static const WCHAR domainname[] = {'d','o','m','a','i','n','n','a','m','e',0};
    static const WCHAR password[] = {'p','a','s','s','w','o','r','d',0};
    const WCHAR *username_ptr, *domainname_ptr, *password_ptr;
    PSEC_WINNT_AUTH_IDENTITY_OPAQUE id;
    SECURITY_STATUS status;

    if (!&pSspiEncodeStringsAsAuthIdentity)
    {
        FUNC7( "SspiEncodeAuthIdentityAsStrings not exported by secur32.dll\n" );
        return;
    }

    status = FUNC3( NULL, NULL, NULL, NULL );
    FUNC1( status == SEC_E_INVALID_TOKEN, "got %08x\n", status );

    id = (PSEC_WINNT_AUTH_IDENTITY_OPAQUE)0xdeadbeef;
    status = FUNC3( NULL, NULL, NULL, &id );
    FUNC1( status == SEC_E_INVALID_TOKEN, "got %08x\n", status );
    FUNC1( id == (PSEC_WINNT_AUTH_IDENTITY_OPAQUE)0xdeadbeef, "id set\n" );

    id = NULL;
    status = FUNC3( NULL, NULL, password, &id );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( id != NULL, "id not set\n" );
    FUNC4( id );

    id = NULL;
    status = FUNC3( NULL, domainname, password, &id );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( id != NULL, "id not set\n" );
    FUNC4( id );

    id = NULL;
    status = FUNC3( username, NULL, password, &id );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( id != NULL, "id not set\n" );
    FUNC4( id );

    id = NULL;
    status = FUNC3( username, NULL, NULL, &id );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( id != NULL, "id not set\n" );
    FUNC4( id );

    id = NULL;
    status = FUNC3( username, domainname, password, &id );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( id != NULL, "id not set\n" );

    username_ptr = domainname_ptr = password_ptr = NULL;
    status = FUNC2( id, &username_ptr, &domainname_ptr, &password_ptr );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( !FUNC0( username, username_ptr ), "wrong username\n" );
    FUNC1( !FUNC0( domainname, domainname_ptr ), "wrong domainname\n" );
    FUNC1( !FUNC0( password, password_ptr ), "wrong password\n" );

    FUNC6( id );

    FUNC5( (void *)username_ptr );
    FUNC5( (void *)domainname_ptr );
    FUNC5( (void *)password_ptr );
    FUNC4( id );

    id = NULL;
    status = FUNC3( username, NULL, password, &id );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( id != NULL, "id not set\n" );

    username_ptr = password_ptr = NULL;
    domainname_ptr = (const WCHAR *)0xdeadbeef;
    status = FUNC2( id, &username_ptr, &domainname_ptr, &password_ptr );
    FUNC1( status == SEC_E_OK, "got %08x\n", status );
    FUNC1( !FUNC0( username, username_ptr ), "wrong username\n" );
    FUNC1( domainname_ptr == NULL, "domainname_ptr not cleared\n" );
    FUNC1( !FUNC0( password, password_ptr ), "wrong password\n" );

    FUNC5( (void *)username_ptr );
    FUNC5( (void *)password_ptr );
    FUNC4( id );
}