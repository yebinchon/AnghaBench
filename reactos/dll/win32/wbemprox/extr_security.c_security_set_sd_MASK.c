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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  PARAM_OUT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VT_UI4 ; 
 int /*<<< orphan*/  class_systemsecurityW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  method_setsdW ; 
 int /*<<< orphan*/  param_returnvalueW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC8( IWbemClassObject *obj, IWbemClassObject *in, IWbemClassObject **out )
{
    VARIANT retval;
    IWbemClassObject *sig, *out_params = NULL;
    HRESULT hr;

    FUNC0("stub\n");

    hr = FUNC6( class_systemsecurityW, method_setsdW, PARAM_OUT, &sig );

    if (FUNC5(hr))
    {
        hr = FUNC4( sig, 0, &out_params );

        FUNC3( sig );
    }

    if (FUNC5(hr))
    {
        FUNC7( VT_UI4, S_OK, NULL, &retval );
        hr = FUNC2( out_params, param_returnvalueW, 0, &retval, CIM_UINT32 );

        if (FUNC5(hr) && out)
        {
            *out = out_params;
            FUNC1( out_params );
        }

        FUNC3( out_params );
    }

    return hr;
}