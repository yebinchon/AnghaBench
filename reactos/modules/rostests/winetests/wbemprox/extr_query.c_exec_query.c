
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int LONG ;
typedef int IWbemServices ;
typedef int IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int IEnumWbemClassObject_Next (int *,int,int,int **,int *) ;
 scalar_t__ IWbemClassObject_Get (int *,char const*,int ,int *,int *,int *) ;
 int IWbemClassObject_Release (int *) ;
 scalar_t__ IWbemServices_ExecQuery (int *,int ,int ,int,int *,int **) ;
 scalar_t__ S_OK ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 char const* V_BSTR (int *) ;
 int VariantClear (int *) ;
 int WBEM_FLAG_FORWARD_ONLY ;
 int WBEM_FLAG_RETURN_IMMEDIATELY ;
 scalar_t__ WBEM_S_NO_ERROR ;
 int trace (char*,int ) ;
 int wine_dbgstr_w (char const*) ;
 char const* wqlW ;

__attribute__((used)) static HRESULT exec_query( IWbemServices *services, const WCHAR *str, IEnumWbemClassObject **result )
{
    static const WCHAR captionW[] = {'C','a','p','t','i','o','n',0};
    static const WCHAR descriptionW[] = {'D','e','s','c','r','i','p','t','i','o','n',0};
    HRESULT hr;
    IWbemClassObject *obj;
    BSTR wql = SysAllocString( wqlW ), query = SysAllocString( str );
    LONG flags = WBEM_FLAG_RETURN_IMMEDIATELY | WBEM_FLAG_FORWARD_ONLY;
    ULONG count;

    hr = IWbemServices_ExecQuery( services, wql, query, flags, ((void*)0), result );
    if (hr == S_OK)
    {
        trace("%s\n", wine_dbgstr_w(str));
        for (;;)
        {
            VARIANT var;

            IEnumWbemClassObject_Next( *result, 10000, 1, &obj, &count );
            if (!count) break;

            if (IWbemClassObject_Get( obj, captionW, 0, &var, ((void*)0), ((void*)0) ) == WBEM_S_NO_ERROR)
            {
                trace("caption: %s\n", wine_dbgstr_w(V_BSTR(&var)));
                VariantClear( &var );
            }
            if (IWbemClassObject_Get( obj, descriptionW, 0, &var, ((void*)0), ((void*)0) ) == WBEM_S_NO_ERROR)
            {
                trace("description: %s\n", wine_dbgstr_w(V_BSTR(&var)));
                VariantClear( &var );
            }
            IWbemClassObject_Release( obj );
        }
    }
    SysFreeString( wql );
    SysFreeString( query );
    return hr;
}
