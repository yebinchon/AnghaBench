
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cert ;
typedef char WCHAR ;
struct TYPE_4__ {int* rgbHashOfCert; int cbSize; char* UserName; } ;
typedef TYPE_1__ USERNAME_TARGET_CREDENTIAL_INFO ;
typedef char* DWORD ;
typedef TYPE_1__ CERT_CREDENTIAL_INFO ;
typedef int BOOL ;


 int CertCredential ;
 char* ERROR_INVALID_PARAMETER ;
 char* GetLastError () ;
 int SetLastError (int) ;
 int UsernameTargetCredential ;
 int lstrcmpA (char*,char*) ;
 int memset (int*,int,int) ;
 int ok (int,char*,...) ;
 int pCredFree (char*) ;
 int pCredMarshalCredentialA (int ,TYPE_1__*,char**) ;

__attribute__((used)) static void test_CredMarshalCredentialA(void)
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

    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( 0, ((void*)0), ((void*)0) );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );

    memset( cert.rgbHashOfCert, 0, sizeof(cert.rgbHashOfCert) );
    cert.cbSize = sizeof(cert);
    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( 0, &cert, ((void*)0) );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );

    str = (char *)0xdeadbeef;
    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( 0, &cert, &str );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    ok( str == (char *)0xdeadbeef, "got %p\n", str );

    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( CertCredential, ((void*)0), ((void*)0) );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );

    if (0) {
    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( CertCredential, &cert, ((void*)0) );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    }

    cert.cbSize = 0;
    str = (char *)0xdeadbeef;
    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    ok( str == (char *)0xdeadbeef, "got %p\n", str );

    cert.cbSize = sizeof(cert) + 4;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@BAAAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    pCredFree( str );

    cert.cbSize = sizeof(cert);
    cert.rgbHashOfCert[0] = 2;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@BCAAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    pCredFree( str );

    cert.rgbHashOfCert[0] = 255;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@B-DAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    pCredFree( str );

    cert.rgbHashOfCert[0] = 1;
    cert.rgbHashOfCert[1] = 1;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@BBEAAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    pCredFree( str );

    cert.rgbHashOfCert[0] = 1;
    cert.rgbHashOfCert[1] = 1;
    cert.rgbHashOfCert[2] = 1;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@BBEQAAAAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    pCredFree( str );

    memset( cert.rgbHashOfCert, 0, sizeof(cert.rgbHashOfCert) );
    cert.rgbHashOfCert[0] = 'W';
    cert.rgbHashOfCert[1] = 'i';
    cert.rgbHashOfCert[2] = 'n';
    cert.rgbHashOfCert[3] = 'e';
    str = ((void*)0);
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@BXlmblBAAAAAAAAAAAAAAAAAAAAA" ), "got %s\n", str );
    pCredFree( str );

    memset( cert.rgbHashOfCert, 0xff, sizeof(cert.rgbHashOfCert) );
    str = ((void*)0);
    ret = pCredMarshalCredentialA( CertCredential, &cert, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@B--------------------------P" ), "got %s\n", str );
    pCredFree( str );

    username.UserName = ((void*)0);
    str = (char *)0xdeadbeef;
    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( UsernameTargetCredential, &username, &str );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    ok( str == (char *)0xdeadbeef, "got %p\n", str );

    username.UserName = emptyW;
    str = (char *)0xdeadbeef;
    SetLastError( 0xdeadbeef );
    ret = pCredMarshalCredentialA( UsernameTargetCredential, &username, &str );
    error = GetLastError();
    ok( !ret, "unexpected success\n" );
    ok( error == ERROR_INVALID_PARAMETER, "got %u\n", error );
    ok( str == (char *)0xdeadbeef, "got %p\n", str );

    username.UserName = tW;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( UsernameTargetCredential, &username, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@CCAAAAA0BA" ), "got %s\n", str );
    pCredFree( str );

    username.UserName = teW;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( UsernameTargetCredential, &username, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@CEAAAAA0BQZAA" ), "got %s\n", str );
    pCredFree( str );

    username.UserName = tesW;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( UsernameTargetCredential, &username, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@CGAAAAA0BQZAMHA" ), "got %s\n", str );
    pCredFree( str );

    username.UserName = testW;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( UsernameTargetCredential, &username, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@CIAAAAA0BQZAMHA0BA" ), "got %s\n", str );
    pCredFree( str );

    username.UserName = test1W;
    str = ((void*)0);
    ret = pCredMarshalCredentialA( UsernameTargetCredential, &username, &str );
    ok( ret, "unexpected failure %u\n", GetLastError() );
    ok( str != ((void*)0), "str not set\n" );
    ok( !lstrcmpA( str, "@@CKAAAAA0BQZAMHA0BQMAA" ), "got %s\n", str );
    pCredFree( str );
}
