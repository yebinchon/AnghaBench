
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int SECURITY_DESCRIPTOR ;
typedef int IWbemClassObject ;
typedef int HRESULT ;
typedef int DWORD ;


 int CIM_FLAG_ARRAY ;
 int CIM_UINT32 ;
 int CIM_UINT8 ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IWbemClassObject_AddRef (int *) ;
 int IWbemClassObject_Put (int *,int ,int ,int *,int) ;
 int IWbemClassObject_Release (int *) ;
 int IWbemClassObject_SpawnInstance (int *,int ,int **) ;
 int PARAM_OUT ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int *,int **) ;
 int VT_UI4 ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int class_systemsecurityW ;
 int create_signature (int ,int ,int ,int **) ;
 int get_sd (int **,int *) ;
 int method_getsdW ;
 int param_returnvalueW ;
 int param_sdW ;
 int set_variant (int ,int ,int *,int *) ;
 int to_byte_array (int *,int ,int *) ;

HRESULT security_get_sd( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT var_sd, retval;
    IWbemClassObject *sig, *out_params = ((void*)0);
    HRESULT hr, ret;
    SECURITY_DESCRIPTOR *sd;
    DWORD sd_size;

    TRACE("%p, %p\n", in, out);

    hr = create_signature( class_systemsecurityW, method_getsdW, PARAM_OUT, &sig );

    if (SUCCEEDED(hr))
    {
        hr = IWbemClassObject_SpawnInstance( sig, 0, &out_params );

        IWbemClassObject_Release( sig );
    }

    if (SUCCEEDED(hr))
    {
        ret = get_sd( &sd, &sd_size );

        if (SUCCEEDED(ret))
        {
            VariantInit( &var_sd );

            hr = to_byte_array( sd, sd_size, &var_sd );

            if (SUCCEEDED(hr))
                hr = IWbemClassObject_Put( out_params, param_sdW, 0, &var_sd, CIM_UINT8|CIM_FLAG_ARRAY );

            HeapFree( GetProcessHeap(), 0, sd );
            VariantClear( &var_sd );
        }

        if (SUCCEEDED(hr))
        {
            set_variant( VT_UI4, ret, ((void*)0), &retval );
            hr = IWbemClassObject_Put( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );
        }

        if (SUCCEEDED(hr) && out)
        {
            *out = out_params;
            IWbemClassObject_AddRef( out_params );
        }

        IWbemClassObject_Release( out_params );
    }

    return hr;
}
