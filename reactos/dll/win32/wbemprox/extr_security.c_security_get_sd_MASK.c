#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int CIM_FLAG_ARRAY ; 
 int CIM_UINT32 ; 
 int CIM_UINT8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PARAM_OUT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  VT_UI4 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_systemsecurityW ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  method_getsdW ; 
 int /*<<< orphan*/  param_returnvalueW ; 
 int /*<<< orphan*/  param_sdW ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HRESULT FUNC14( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT var_sd, retval;
    IWbemClassObject *sig, *out_params = NULL;
    HRESULT hr, ret;
    SECURITY_DESCRIPTOR *sd;
    DWORD sd_size;

    FUNC7("%p, %p\n", in, out);

    hr = FUNC10( class_systemsecurityW, method_getsdW, PARAM_OUT, &sig );

    if (FUNC6(hr))
    {
        hr = FUNC5( sig, 0, &out_params );

        FUNC4( sig );
    }

    if (FUNC6(hr))
    {
        ret = FUNC11( &sd, &sd_size );

        if (FUNC6(ret))
        {
            FUNC9( &var_sd );

            hr = FUNC13( sd, sd_size, &var_sd );

            if (FUNC6(hr))
                hr = FUNC3( out_params, param_sdW, 0, &var_sd, CIM_UINT8|CIM_FLAG_ARRAY );

            FUNC1( FUNC0(), 0, sd );
            FUNC8( &var_sd );
        }

        if (FUNC6(hr))
        {
            FUNC12( VT_UI4, ret, NULL, &retval );
            hr = FUNC3( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );
        }

        if (FUNC6(hr) && out)
        {
            *out = out_params;
            FUNC2( out_params );
        }

        FUNC4( out_params );
    }

    return hr;
}