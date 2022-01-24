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
 int /*<<< orphan*/  CIM_STRING ; 
 int /*<<< orphan*/  CIM_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PARAM_OUT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_processW ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  method_getownerW ; 
 int /*<<< orphan*/  param_domainW ; 
 int /*<<< orphan*/  param_returnvalueW ; 
 int /*<<< orphan*/  param_userW ; 

HRESULT FUNC10( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT user, domain, retval;
    IWbemClassObject *sig, *out_params = NULL;
    HRESULT hr;

    FUNC4("%p, %p, %p\n", obj, in, out);

    hr = FUNC8( class_processW, method_getownerW, PARAM_OUT, &sig );
    if (hr != S_OK) return hr;

    if (out)
    {
        hr = FUNC3( sig, 0, &out_params );
        if (hr != S_OK)
        {
            FUNC2( sig );
            return hr;
        }
    }
    FUNC7( &user );
    FUNC7( &domain );
    hr = FUNC9( &user, &domain, &retval );
    if (hr != S_OK) goto done;
    if (out_params)
    {
        if (!FUNC5( &retval ))
        {
            hr = FUNC1( out_params, param_userW, 0, &user, CIM_STRING );
            if (hr != S_OK) goto done;
            hr = FUNC1( out_params, param_domainW, 0, &domain, CIM_STRING );
            if (hr != S_OK) goto done;
        }
        hr = FUNC1( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );
    }

done:
    FUNC6( &user );
    FUNC6( &domain );
    FUNC2( sig );
    if (hr == S_OK && out)
    {
        *out = out_params;
        FUNC0( out_params );
    }
    if (out_params) FUNC2( out_params );
    return hr;
}