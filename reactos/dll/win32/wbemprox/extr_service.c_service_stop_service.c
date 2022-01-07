
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IWbemClassObject ;
typedef scalar_t__ HRESULT ;


 int CIM_UINT32 ;
 int IWbemClassObject_AddRef (int *) ;
 scalar_t__ IWbemClassObject_Get (int *,int ,int ,int *,int *,int *) ;
 scalar_t__ IWbemClassObject_Put (int *,int ,int ,int *,int ) ;
 int IWbemClassObject_Release (int *) ;
 scalar_t__ IWbemClassObject_SpawnInstance (int *,int ,int **) ;
 int PARAM_OUT ;
 int SERVICE_CONTROL_STOP ;
 scalar_t__ S_OK ;
 int TRACE (char*,int *,int *,int **) ;
 int V_BSTR (int *) ;
 int VariantClear (int *) ;
 int class_serviceW ;
 scalar_t__ control_service (int ,int ,int *) ;
 scalar_t__ create_signature (int ,int ,int ,int **) ;
 int method_stopserviceW ;
 int param_returnvalueW ;
 int prop_nameW ;

HRESULT service_stop_service( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT name, retval;
    IWbemClassObject *sig, *out_params = ((void*)0);
    HRESULT hr;

    TRACE("%p, %p, %p\n", obj, in, out);

    hr = IWbemClassObject_Get( obj, prop_nameW, 0, &name, ((void*)0), ((void*)0) );
    if (hr != S_OK) return hr;

    hr = create_signature( class_serviceW, method_stopserviceW, PARAM_OUT, &sig );
    if (hr != S_OK)
    {
        VariantClear( &name );
        return hr;
    }
    if (out)
    {
        hr = IWbemClassObject_SpawnInstance( sig, 0, &out_params );
        if (hr != S_OK)
        {
            VariantClear( &name );
            IWbemClassObject_Release( sig );
            return hr;
        }
    }
    hr = control_service( V_BSTR(&name), SERVICE_CONTROL_STOP, &retval );
    if (hr != S_OK) goto done;

    if (out_params)
        hr = IWbemClassObject_Put( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );

done:
    VariantClear( &name );
    IWbemClassObject_Release( sig );
    if (hr == S_OK && out)
    {
        *out = out_params;
        IWbemClassObject_AddRef( out_params );
    }
    if (out_params) IWbemClassObject_Release( out_params );
    return hr;
}
