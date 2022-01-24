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
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ RPC_STATUS ;
typedef  scalar_t__ RPC_CSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NameSamCompatible ; 
 int /*<<< orphan*/  RPC_C_AUTHN_DEFAULT ; 
 int /*<<< orphan*/  RPC_C_AUTHN_WINNT ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_S_UNKNOWN_AUTHN_SERVICE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(void)
{
    RPC_STATUS ret;
    RPC_CSTR principal, saved_principal;
    char *username;
    ULONG len = 0;

    FUNC1( NameSamCompatible, NULL, &len );
    username = FUNC2( FUNC0(), 0, len );
    FUNC1( NameSamCompatible, username, &len );

    ret = FUNC4( 0, NULL );
    FUNC7( ret == RPC_S_UNKNOWN_AUTHN_SERVICE, "got %u\n", ret );

    ret = FUNC4( RPC_C_AUTHN_DEFAULT, NULL );
    FUNC7( ret == RPC_S_UNKNOWN_AUTHN_SERVICE, "got %u\n", ret );

    principal = (RPC_CSTR)0xdeadbeef;
    ret = FUNC4( RPC_C_AUTHN_DEFAULT, &principal );
    FUNC7( ret == RPC_S_UNKNOWN_AUTHN_SERVICE, "got %u\n", ret );
    FUNC7( principal == (RPC_CSTR)0xdeadbeef, "got unexpected principal\n" );

    saved_principal = (RPC_CSTR)0xdeadbeef;
    ret = FUNC4( RPC_C_AUTHN_WINNT, &saved_principal );
    FUNC7( ret == RPC_S_OK, "got %u\n", ret );
    FUNC7( saved_principal != (RPC_CSTR)0xdeadbeef, "expected valid principal\n" );
    FUNC7( !FUNC8( (const char *)saved_principal, username ), "got \'%s\'\n", saved_principal );
    FUNC9("%s\n", saved_principal);

    ret = FUNC5( (RPC_CSTR)"wine\\test", RPC_C_AUTHN_WINNT, NULL, NULL );
    FUNC7( ret == RPC_S_OK, "got %u\n", ret );

    principal = (RPC_CSTR)0xdeadbeef;
    ret = FUNC4( RPC_C_AUTHN_WINNT, &principal );
    FUNC7( ret == RPC_S_OK, "got %u\n", ret );
    FUNC7( principal != (RPC_CSTR)0xdeadbeef, "expected valid principal\n" );
    FUNC7( !FUNC8( (const char *)principal, username ), "got \'%s\'\n", principal );
    FUNC6( &principal );

    ret = FUNC5( saved_principal, RPC_C_AUTHN_WINNT, NULL, NULL );
    FUNC7( ret == RPC_S_OK, "got %u\n", ret );

    FUNC6( &saved_principal );
    FUNC3( FUNC0(), 0, username );
}