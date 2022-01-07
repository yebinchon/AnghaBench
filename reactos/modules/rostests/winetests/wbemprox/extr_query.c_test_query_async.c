
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IWbemServices ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IWbemServices_CancelAsyncCall (int *,int *) ;
 scalar_t__ IWbemServices_ExecQueryAsync (int *,int ,int ,int ,int *,int *) ;
 scalar_t__ S_OK ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 scalar_t__ WBEM_E_INVALID_PARAMETER ;
 scalar_t__ WBEM_E_NOT_FOUND ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 int sink ;
 char const* wqlW ;

__attribute__((used)) static void test_query_async( IWbemServices *services )
{
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'P','r','o','c','e','s','s',0};
    BSTR wql = SysAllocString( wqlW ), query = SysAllocString( queryW );
    HRESULT hr;

    hr = IWbemServices_ExecQueryAsync( services, wql, query, 0, ((void*)0), ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = IWbemServices_ExecQueryAsync( services, wql, query, 0, ((void*)0), &sink );
    ok( hr == S_OK || broken(hr == WBEM_E_NOT_FOUND), "got %08x\n", hr );

    hr = IWbemServices_CancelAsyncCall( services, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = IWbemServices_CancelAsyncCall( services, &sink );
    ok( hr == S_OK, "got %08x\n", hr );

    SysFreeString( wql );
    SysFreeString( query );
}
