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
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  scalar_t__ INT_PTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int CIM_FLAG_ARRAY ; 
 int CIM_SINT32 ; 
 int CIM_STRING ; 
 int CIM_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PARAM_OUT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_stdregprovW ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  method_enumvaluesW ; 
 int /*<<< orphan*/  param_defkeyW ; 
 int /*<<< orphan*/  param_namesW ; 
 int /*<<< orphan*/  param_returnvalueW ; 
 int /*<<< orphan*/  param_subkeynameW ; 
 int /*<<< orphan*/  param_typesW ; 

HRESULT FUNC13( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT defkey, subkey, names, types, retval;
    IWbemClassObject *sig, *out_params = NULL;
    HRESULT hr;

    FUNC5("%p, %p\n", in, out);

    hr = FUNC1( in, param_defkeyW, 0, &defkey, NULL, NULL );
    if (hr != S_OK) return hr;
    hr = FUNC1( in, param_subkeynameW, 0, &subkey, NULL, NULL );
    if (hr != S_OK) return hr;

    hr = FUNC11( class_stdregprovW, method_enumvaluesW, PARAM_OUT, &sig );
    if (hr != S_OK)
    {
        FUNC9( &subkey );
        return hr;
    }
    if (out)
    {
        hr = FUNC4( sig, 0, &out_params );
        if (hr != S_OK)
        {
            FUNC9( &subkey );
            FUNC3( sig );
            return hr;
        }
    }
    FUNC10( &names );
    FUNC10( &types );
    hr = FUNC12( (HKEY)(INT_PTR)FUNC7(&defkey), FUNC6(&subkey), &names, &types, &retval );
    if (hr != S_OK) goto done;
    if (out_params)
    {
        if (!FUNC8( &retval ))
        {
            hr = FUNC2( out_params, param_namesW, 0, &names, CIM_STRING|CIM_FLAG_ARRAY );
            if (hr != S_OK) goto done;
            hr = FUNC2( out_params, param_typesW, 0, &types, CIM_SINT32|CIM_FLAG_ARRAY );
            if (hr != S_OK) goto done;
        }
        hr = FUNC2( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );
    }

done:
    FUNC9( &types );
    FUNC9( &names );
    FUNC9( &subkey );
    FUNC3( sig );
    if (hr == S_OK && out)
    {
        *out = out_params;
        FUNC0( out_params );
    }
    if (out_params) FUNC3( out_params );
    return hr;
}