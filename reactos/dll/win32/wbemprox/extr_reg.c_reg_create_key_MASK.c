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
 int /*<<< orphan*/  CIM_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PARAM_OUT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_stdregprovW ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  method_createkeyW ; 
 int /*<<< orphan*/  param_defkeyW ; 
 int /*<<< orphan*/  param_returnvalueW ; 
 int /*<<< orphan*/  param_subkeynameW ; 

HRESULT FUNC11( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT defkey, subkey, retval;
    IWbemClassObject *sig, *out_params = NULL;
    HRESULT hr;

    FUNC5("%p, %p\n", in, out);

    hr = FUNC1( in, param_defkeyW, 0, &defkey, NULL, NULL );
    if (hr != S_OK) return hr;
    hr = FUNC1( in, param_subkeynameW, 0, &subkey, NULL, NULL );
    if (hr != S_OK) return hr;

    hr = FUNC10( class_stdregprovW, method_createkeyW, PARAM_OUT, &sig );
    if (hr != S_OK)
    {
        FUNC8( &subkey );
        return hr;
    }
    if (out)
    {
        hr = FUNC4( sig, 0, &out_params );
        if (hr != S_OK)
        {
            FUNC8( &subkey );
            FUNC3( sig );
            return hr;
        }
    }
    hr = FUNC9( (HKEY)(INT_PTR)FUNC7(&defkey), FUNC6(&subkey), &retval );
    if (hr == S_OK && out_params)
        hr = FUNC2( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );

    FUNC8( &subkey );
    FUNC3( sig );
    if (hr == S_OK && out)
    {
        *out = out_params;
        FUNC0( out_params );
    }
    if (out_params) FUNC3( out_params );
    return hr;
}