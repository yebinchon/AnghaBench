
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IWbemClassObject ;
typedef scalar_t__ HRESULT ;


 int CIM_STRING ;
 int CIM_UINT32 ;
 int IWbemClassObject_AddRef (int *) ;
 scalar_t__ IWbemClassObject_Put (int *,int ,int ,int *,int ) ;
 int IWbemClassObject_Release (int *) ;
 scalar_t__ IWbemClassObject_SpawnInstance (int *,int ,int **) ;
 int PARAM_OUT ;
 scalar_t__ S_OK ;
 int TRACE (char*,int *,int *,int **) ;
 int V_UI4 (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int class_processW ;
 scalar_t__ create_signature (int ,int ,int ,int **) ;
 scalar_t__ get_owner (int *,int *,int *) ;
 int method_getownerW ;
 int param_domainW ;
 int param_returnvalueW ;
 int param_userW ;

HRESULT process_get_owner( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT user, domain, retval;
    IWbemClassObject *sig, *out_params = ((void*)0);
    HRESULT hr;

    TRACE("%p, %p, %p\n", obj, in, out);

    hr = create_signature( class_processW, method_getownerW, PARAM_OUT, &sig );
    if (hr != S_OK) return hr;

    if (out)
    {
        hr = IWbemClassObject_SpawnInstance( sig, 0, &out_params );
        if (hr != S_OK)
        {
            IWbemClassObject_Release( sig );
            return hr;
        }
    }
    VariantInit( &user );
    VariantInit( &domain );
    hr = get_owner( &user, &domain, &retval );
    if (hr != S_OK) goto done;
    if (out_params)
    {
        if (!V_UI4( &retval ))
        {
            hr = IWbemClassObject_Put( out_params, param_userW, 0, &user, CIM_STRING );
            if (hr != S_OK) goto done;
            hr = IWbemClassObject_Put( out_params, param_domainW, 0, &domain, CIM_STRING );
            if (hr != S_OK) goto done;
        }
        hr = IWbemClassObject_Put( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );
    }

done:
    VariantClear( &user );
    VariantClear( &domain );
    IWbemClassObject_Release( sig );
    if (hr == S_OK && out)
    {
        *out = out_params;
        IWbemClassObject_AddRef( out_params );
    }
    if (out_params) IWbemClassObject_Release( out_params );
    return hr;
}
