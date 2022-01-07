
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IWbemClassObject ;
typedef int HRESULT ;


 int CIM_UINT32 ;
 int FIXME (char*) ;
 int IWbemClassObject_AddRef (int *) ;
 int IWbemClassObject_Put (int *,int ,int ,int *,int ) ;
 int IWbemClassObject_Release (int *) ;
 int IWbemClassObject_SpawnInstance (int *,int ,int **) ;
 int PARAM_OUT ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int VT_UI4 ;
 int class_systemsecurityW ;
 int create_signature (int ,int ,int ,int **) ;
 int method_setsdW ;
 int param_returnvalueW ;
 int set_variant (int ,int ,int *,int *) ;

HRESULT security_set_sd( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT retval;
    IWbemClassObject *sig, *out_params = ((void*)0);
    HRESULT hr;

    FIXME("stub\n");

    hr = create_signature( class_systemsecurityW, method_setsdW, PARAM_OUT, &sig );

    if (SUCCEEDED(hr))
    {
        hr = IWbemClassObject_SpawnInstance( sig, 0, &out_params );

        IWbemClassObject_Release( sig );
    }

    if (SUCCEEDED(hr))
    {
        set_variant( VT_UI4, S_OK, ((void*)0), &retval );
        hr = IWbemClassObject_Put( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );

        if (SUCCEEDED(hr) && out)
        {
            *out = out_params;
            IWbemClassObject_AddRef( out_params );
        }

        IWbemClassObject_Release( out_params );
    }

    return hr;
}
