
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int SAFEARRAY ;
typedef int IWbemServices ;
typedef int IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int IEnumWbemClassObject_Next (int *,int,int,int **,int *) ;
 int IEnumWbemClassObject_Release (int *) ;
 scalar_t__ IWbemClassObject_GetNames (int *,int *,int ,int *,int **) ;
 int IWbemClassObject_Release (int *) ;
 scalar_t__ IWbemServices_ExecQuery (int *,int ,int ,int ,int *,int **) ;
 scalar_t__ S_OK ;
 int SafeArrayDestroy (int *) ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 int VariantInit (int *) ;
 int WBEM_FLAG_NONSYSTEM_ONLY ;
 int ok (int,char*,scalar_t__) ;
 char const* wqlW ;

__attribute__((used)) static void test_GetNames( IWbemServices *services )
{
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'O','p','e','r','a','t','i','n','g','S','y','s','t','e','m',0};
    BSTR wql = SysAllocString( wqlW ), query = SysAllocString( queryW );
    IEnumWbemClassObject *result;
    HRESULT hr;

    hr = IWbemServices_ExecQuery( services, wql, query, 0, ((void*)0), &result );
    ok( hr == S_OK, "got %08x\n", hr );

    for (;;)
    {
        IWbemClassObject *obj;
        SAFEARRAY *names;
        ULONG count;
        VARIANT val;

        IEnumWbemClassObject_Next( result, 10000, 1, &obj, &count );
        if (!count) break;

        VariantInit( &val );
        hr = IWbemClassObject_GetNames( obj, ((void*)0), WBEM_FLAG_NONSYSTEM_ONLY, &val, &names );
        ok( hr == S_OK, "got %08x\n", hr );

        SafeArrayDestroy( names );
        IWbemClassObject_Release( obj );
    }
    IEnumWbemClassObject_Release( result );
    SysFreeString( query );
    SysFreeString( wql );
}
