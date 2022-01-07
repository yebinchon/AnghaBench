
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IWbemClassObject ;
typedef scalar_t__ INT_PTR ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;


 int CIM_UINT32 ;
 int IWbemClassObject_AddRef (int *) ;
 scalar_t__ IWbemClassObject_Get (int *,int ,int ,int *,int *,int *) ;
 scalar_t__ IWbemClassObject_Put (int *,int ,int ,int *,int ) ;
 int IWbemClassObject_Release (int *) ;
 scalar_t__ IWbemClassObject_SpawnInstance (int *,int ,int **) ;
 int PARAM_OUT ;
 scalar_t__ S_OK ;
 int TRACE (char*,int *,int **) ;
 int V_BSTR (int *) ;
 scalar_t__ V_I4 (int *) ;
 int VariantClear (int *) ;
 int class_stdregprovW ;
 scalar_t__ create_key (int ,int ,int *) ;
 scalar_t__ create_signature (int ,int ,int ,int **) ;
 int method_createkeyW ;
 int param_defkeyW ;
 int param_returnvalueW ;
 int param_subkeynameW ;

HRESULT reg_create_key( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT defkey, subkey, retval;
    IWbemClassObject *sig, *out_params = ((void*)0);
    HRESULT hr;

    TRACE("%p, %p\n", in, out);

    hr = IWbemClassObject_Get( in, param_defkeyW, 0, &defkey, ((void*)0), ((void*)0) );
    if (hr != S_OK) return hr;
    hr = IWbemClassObject_Get( in, param_subkeynameW, 0, &subkey, ((void*)0), ((void*)0) );
    if (hr != S_OK) return hr;

    hr = create_signature( class_stdregprovW, method_createkeyW, PARAM_OUT, &sig );
    if (hr != S_OK)
    {
        VariantClear( &subkey );
        return hr;
    }
    if (out)
    {
        hr = IWbemClassObject_SpawnInstance( sig, 0, &out_params );
        if (hr != S_OK)
        {
            VariantClear( &subkey );
            IWbemClassObject_Release( sig );
            return hr;
        }
    }
    hr = create_key( (HKEY)(INT_PTR)V_I4(&defkey), V_BSTR(&subkey), &retval );
    if (hr == S_OK && out_params)
        hr = IWbemClassObject_Put( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );

    VariantClear( &subkey );
    IWbemClassObject_Release( sig );
    if (hr == S_OK && out)
    {
        *out = out_params;
        IWbemClassObject_AddRef( out_params );
    }
    if (out_params) IWbemClassObject_Release( out_params );
    return hr;
}
