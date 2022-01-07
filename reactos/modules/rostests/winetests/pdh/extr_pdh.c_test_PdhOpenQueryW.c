
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;
typedef int * PDH_HQUERY ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PDH_INVALID_HANDLE ;
 scalar_t__ PdhCloseQuery (int *) ;
 scalar_t__ PdhOpenQueryW (int *,int ,int **) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_PdhOpenQueryW( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;

    ret = PdhOpenQueryW( ((void*)0), 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhOpenQueryW failed 0x%08x\n", ret);

    ret = PdhOpenQueryW( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryW failed 0x%08x\n", ret);

    ret = PdhCloseQuery( ((void*)0) );
    ok(ret == PDH_INVALID_HANDLE, "PdhCloseQuery failed 0x%08x\n", ret);

    ret = PdhCloseQuery( &query );
    ok(ret == PDH_INVALID_HANDLE, "PdhCloseQuery failed 0x%08x\n", ret);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);

    ret = PdhCloseQuery( query );
    ok(ret == PDH_INVALID_HANDLE, "PdhCloseQuery failed 0x%08x\n", ret);
}
