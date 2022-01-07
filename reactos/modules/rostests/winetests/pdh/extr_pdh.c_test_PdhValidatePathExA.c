
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_CSTATUS_BAD_COUNTERNAME ;
 scalar_t__ PDH_CSTATUS_NO_COUNTER ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pPdhValidatePathExA (int *,char*) ;

__attribute__((used)) static void test_PdhValidatePathExA( void )
{
    PDH_STATUS ret;

    ret = pPdhValidatePathExA( ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = pPdhValidatePathExA( ((void*)0), "" );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = pPdhValidatePathExA( ((void*)0), "\\System" );
    ok(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = pPdhValidatePathExA( ((void*)0), "System Up Time" );
    ok(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = pPdhValidatePathExA( ((void*)0), "\\System\\System Down Time" );
    ok(ret == PDH_CSTATUS_NO_COUNTER, "PdhValidatePathExA failed 0x%08x\n", ret);

    ret = pPdhValidatePathExA( ((void*)0), "\\System\\System Up Time" );
    ok(ret == ERROR_SUCCESS, "PdhValidatePathExA failed 0x%08x\n", ret);
}
