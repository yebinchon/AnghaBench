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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PARAM_OUT ; 
 int /*<<< orphan*/  SERVICE_CONTROL_PAUSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_serviceW ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  method_pauseserviceW ; 
 int /*<<< orphan*/  param_returnvalueW ; 
 int /*<<< orphan*/  prop_nameW ; 

HRESULT FUNC10( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT name, retval;
    IWbemClassObject *sig, *out_params = NULL;
    HRESULT hr;

    FUNC5("%p, %p, %p\n", obj, in, out);

    hr = FUNC1( obj, prop_nameW, 0, &name, NULL, NULL );
    if (hr != S_OK) return hr;

    hr = FUNC9( class_serviceW, method_pauseserviceW, PARAM_OUT, &sig );
    if (hr != S_OK)
    {
        FUNC7( &name );
        return hr;
    }
    if (out)
    {
        hr = FUNC4( sig, 0, &out_params );
        if (hr != S_OK)
        {
            FUNC7( &name );
            FUNC3( sig );
            return hr;
        }
    }
    hr = FUNC8( FUNC6(&name), SERVICE_CONTROL_PAUSE, &retval );
    if (hr != S_OK) goto done;

    if (out_params)
        hr = FUNC2( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );

done:
    FUNC7( &name );
    FUNC3( sig );
    if (hr == S_OK && out)
    {
        *out = out_params;
        FUNC0( out_params );
    }
    if (out_params) FUNC3( out_params );
    return hr;
}