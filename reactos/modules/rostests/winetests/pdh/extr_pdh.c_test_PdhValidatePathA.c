
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_CSTATUS_BAD_COUNTERNAME ;
 scalar_t__ PDH_CSTATUS_NO_COUNTER ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PdhValidatePathA (char*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_PdhValidatePathA( void )
{
    PDH_STATUS ret;

    ret = PdhValidatePathA( ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = PdhValidatePathA( "" );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = PdhValidatePathA( "\\System" );
    ok(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = PdhValidatePathA( "System Up Time" );
    ok(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = PdhValidatePathA( "\\System\\Nonexistent Counter" );
    ok(ret == PDH_CSTATUS_NO_COUNTER, "PdhValidatePathA failed 0x%08x\n", ret);

    ret = PdhValidatePathA( "\\System\\System Up Time" );
    ok(ret == ERROR_SUCCESS, "PdhValidatePathA failed 0x%08x\n", ret);
}
