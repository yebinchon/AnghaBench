
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ CloseThemeData (int *) ;
 scalar_t__ E_HANDLE ;
 int * INVALID_HANDLE_VALUE ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_CloseThemeData(void)
{
    HRESULT hRes;

    hRes = CloseThemeData(((void*)0));
    ok( hRes == E_HANDLE, "Expected E_HANDLE, got 0x%08x\n", hRes);
    hRes = CloseThemeData(INVALID_HANDLE_VALUE);
    ok( hRes == E_HANDLE, "Expected E_HANDLE, got 0x%08x\n", hRes);
}
