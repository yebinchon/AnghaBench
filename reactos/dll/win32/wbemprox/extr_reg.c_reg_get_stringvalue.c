
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IWbemClassObject ;
typedef scalar_t__ INT_PTR ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;


 int CIM_STRING ;
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
 int V_UI4 (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int class_stdregprovW ;
 scalar_t__ create_signature (int ,int ,int ,int **) ;
 scalar_t__ get_stringvalue (int ,int ,int ,int *,int *) ;
 int method_getstringvalueW ;
 int param_defkeyW ;
 int param_returnvalueW ;
 int param_subkeynameW ;
 int param_valueW ;
 int param_valuenameW ;

HRESULT reg_get_stringvalue( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT defkey, subkey, name, value, retval;
    IWbemClassObject *sig, *out_params = ((void*)0);
    HRESULT hr;

    TRACE("%p, %p\n", in, out);

    hr = IWbemClassObject_Get( in, param_defkeyW, 0, &defkey, ((void*)0), ((void*)0) );
    if (hr != S_OK) return hr;
    hr = IWbemClassObject_Get( in, param_subkeynameW, 0, &subkey, ((void*)0), ((void*)0) );
    if (hr != S_OK) return hr;
    hr = IWbemClassObject_Get( in, param_valuenameW, 0, &name, ((void*)0), ((void*)0) );
    if (hr != S_OK) return hr;

    hr = create_signature( class_stdregprovW, method_getstringvalueW, PARAM_OUT, &sig );
    if (hr != S_OK)
    {
        VariantClear( &name );
        VariantClear( &subkey );
        return hr;
    }
    if (out)
    {
        hr = IWbemClassObject_SpawnInstance( sig, 0, &out_params );
        if (hr != S_OK)
        {
            VariantClear( &name );
            VariantClear( &subkey );
            IWbemClassObject_Release( sig );
            return hr;
        }
    }
    VariantInit( &value );
    hr = get_stringvalue( (HKEY)(INT_PTR)V_I4(&defkey), V_BSTR(&subkey), V_BSTR(&name), &value, &retval );
    if (hr != S_OK) goto done;
    if (out_params)
    {
        if (!V_UI4( &retval ))
        {
            hr = IWbemClassObject_Put( out_params, param_valueW, 0, &value, CIM_STRING );
            if (hr != S_OK) goto done;
        }
        hr = IWbemClassObject_Put( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );
    }

done:
    VariantClear( &name );
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
