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
typedef  int /*<<< orphan*/  cert ;
typedef  char WCHAR ;
struct TYPE_4__ {int* rgbHashOfCert; int cbSize; char* UserName; } ;
typedef  TYPE_1__ USERNAME_TARGET_CREDENTIAL_INFO ;
typedef  char* DWORD ;
typedef  TYPE_1__ CERT_CREDENTIAL_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CertCredential ; 
 char* ERROR_INVALID_PARAMETER ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  UsernameTargetCredential ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,char**) ; 

__attribute__((used)) static void FUNC7(void)
{
    static WCHAR emptyW[] = {0};
    static WCHAR tW[] = {'t',0};
    static WCHAR teW[] = {'t','e',0};
    static WCHAR tesW[] = {'t','e','s',0};
    static WCHAR testW[] = {'t','e','s','t',0};
    static WCHAR test1W[] = {'t','e','s','t','1',0};
    CERT_CREDENTIAL_INFO cert;
    USERNAME_TARGET_CREDENTIAL_INFO username;
    DWORD error;
    char *str;
    BOOL ret;

    FUNC1( 0xdeadbeef );
    ret = FUNC6( 0, NULL, NULL );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );

    FUNC3( cert.rgbHashOfCert, 0, sizeof(cert.rgbHashOfCert) );
    cert.cbSize = sizeof(cert);
    FUNC1( 0xdeadbeef );
    ret = FUNC6( 0, &cert, NULL );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );

    str = (char *)0xdeadbeef;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( 0, &cert, &str );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    FUNC4( str == (char *)0xdeadbeef, "got %p\n", str );

    FUNC1( 0xdeadbeef );
    ret = FUNC6( CertCredential, NULL, NULL );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );

    if (0) { /* crash */
    FUNC1( 0xdeadbeef );
    ret = FUNC6( CertCredential, &cert, NULL );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    }

    cert.cbSize = 0;
    str = (char *)0xdeadbeef;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( CertCredential, &cert, &str );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    FUNC4( str == (char *)0xdeadbeef, "got %p\n", str );

    cert.cbSize = sizeof(cert) + 4;
    str = NULL;
    ret = FUNC6( CertCredential, &cert, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@BAAAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    FUNC5( str );

    cert.cbSize = sizeof(cert);
    cert.rgbHashOfCert[0] = 2;
    str = NULL;
    ret = FUNC6( CertCredential, &cert, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@BCAAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    FUNC5( str );

    cert.rgbHashOfCert[0] = 255;
    str = NULL;
    ret = FUNC6( CertCredential, &cert, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@B-DAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    FUNC5( str );

    cert.rgbHashOfCert[0] = 1;
    cert.rgbHashOfCert[1] = 1;
    str = NULL;
    ret = FUNC6( CertCredential, &cert, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@BBEAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    FUNC5( str );

    cert.rgbHashOfCert[0] = 1;
    cert.rgbHashOfCert[1] = 1;
    cert.rgbHashOfCert[2] = 1;
    str = NULL;
    ret = FUNC6( CertCredential, &cert, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@BBEQAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    FUNC5( str );

    FUNC3( cert.rgbHashOfCert, 0, sizeof(cert.rgbHashOfCert) );
    cert.rgbHashOfCert[0] = 'W';
    cert.rgbHashOfCert[1] = 'i';
    cert.rgbHashOfCert[2] = 'n';
    cert.rgbHashOfCert[3] = 'e';
    str = NULL;
    ret = FUNC6( CertCredential, &cert, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@BXlmblBAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    FUNC5( str );

    FUNC3( cert.rgbHashOfCert, 0xff, sizeof(cert.rgbHashOfCert) );
    str = NULL;
    ret = FUNC6( CertCredential, &cert, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@B--------------------------P" ), "got %s\n", str );
    FUNC5( str );

    username.UserName = NULL;
    str = (char *)0xdeadbeef;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( UsernameTargetCredential, &username, &str );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    FUNC4( str == (char *)0xdeadbeef, "got %p\n", str );

    username.UserName = emptyW;
    str = (char *)0xdeadbeef;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( UsernameTargetCredential, &username, &str );
    error = FUNC0();
    FUNC4( !ret, "unexpected success\n" );
    FUNC4( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    FUNC4( str == (char *)0xdeadbeef, "got %p\n", str );

    username.UserName = tW;
    str = NULL;
    ret = FUNC6( UsernameTargetCredential, &username, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@CCAAAAA0BA" ), "got %s\n", str );
    FUNC5( str );

    username.UserName = teW;
    str = NULL;
    ret = FUNC6( UsernameTargetCredential, &username, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@CEAAAAA0BQZAA" ), "got %s\n", str );
    FUNC5( str );

    username.UserName = tesW;
    str = NULL;
    ret = FUNC6( UsernameTargetCredential, &username, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@CGAAAAA0BQZAMHA" ), "got %s\n", str );
    FUNC5( str );

    username.UserName = testW;
    str = NULL;
    ret = FUNC6( UsernameTargetCredential, &username, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@CIAAAAA0BQZAMHA0BA" ), "got %s\n", str );
    FUNC5( str );

    username.UserName = test1W;
    str = NULL;
    ret = FUNC6( UsernameTargetCredential, &username, &str );
    FUNC4( ret, "unexpected failure %u\n", FUNC0() );
    FUNC4( str != NULL, "str not set\n" );
    FUNC4( !FUNC2( str, "@@CKAAAAA0BQZAMHA0BQMAA" ), "got %s\n", str );
    FUNC5( str );
}