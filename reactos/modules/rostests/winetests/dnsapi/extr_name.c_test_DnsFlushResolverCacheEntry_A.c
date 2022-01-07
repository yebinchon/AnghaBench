
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int DnsFlushResolverCacheEntry_A (char*) ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_DnsFlushResolverCacheEntry_A(void)
{
    BOOL ret;
    DWORD err;

    SetLastError( 0xdeadbeef );
    ret = DnsFlushResolverCacheEntry_A( ((void*)0) );
    err = GetLastError();
    ok( !ret, "got %d\n", ret );
    ok( err == 0xdeadbeef, "got %u\n", err );

    ret = DnsFlushResolverCacheEntry_A( "localhost" );
    ok( ret, "got %d\n", ret );

    ret = DnsFlushResolverCacheEntry_A( "nxdomain.test.winehq.org" );
    ok( ret, "got %d\n", ret );
}
