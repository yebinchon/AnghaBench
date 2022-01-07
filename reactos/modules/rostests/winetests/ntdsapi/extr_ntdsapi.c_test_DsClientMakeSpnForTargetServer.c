
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ARRAY_SIZE (char*) ;
 scalar_t__ DsClientMakeSpnForTargetServerW (char const*,char const*,scalar_t__*,char*) ;
 scalar_t__ ERROR_BUFFER_OVERFLOW ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int lstrcmpW (char*,char const*) ;
 scalar_t__ lstrlenW (char const*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_DsClientMakeSpnForTargetServer(void)
{
    static const WCHAR classW[] = {'c','l','a','s','s',0};
    static const WCHAR hostW[] = {'h','o','s','t','.','d','o','m','a','i','n',0};
    static const WCHAR resultW[] = {'c','l','a','s','s','/','h','o','s','t','.','d','o','m','a','i','n',0};
    DWORD ret, len;
    WCHAR buf[256];

    ret = DsClientMakeSpnForTargetServerW( ((void*)0), ((void*)0), ((void*)0), ((void*)0) );
    ok( ret == ERROR_INVALID_PARAMETER, "got %u\n", ret );

    ret = DsClientMakeSpnForTargetServerW( classW, ((void*)0), ((void*)0), ((void*)0) );
    ok( ret == ERROR_INVALID_PARAMETER, "got %u\n", ret );

    ret = DsClientMakeSpnForTargetServerW( classW, hostW, ((void*)0), ((void*)0) );
    ok( ret == ERROR_INVALID_PARAMETER, "got %u\n", ret );

    len = 0;
    ret = DsClientMakeSpnForTargetServerW( classW, hostW, &len, ((void*)0) );
    ok( ret == ERROR_BUFFER_OVERFLOW, "got %u\n", ret );
    ok( len == lstrlenW(resultW) + 1, "got %u\n", len );

    len = ARRAY_SIZE(buf);
    buf[0] = 0;
    ret = DsClientMakeSpnForTargetServerW( classW, hostW, &len, buf );
    ok( ret == ERROR_SUCCESS, "got %u\n", ret );
    ok( len == lstrlenW(resultW) + 1, "got %u\n", len );
    ok( !lstrcmpW( buf, resultW ), "wrong data\n" );
}
