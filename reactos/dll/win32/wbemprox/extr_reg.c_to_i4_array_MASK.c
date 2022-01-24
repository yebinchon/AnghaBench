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
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  size_t LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*,size_t*) ; 
 int VT_ARRAY ; 
 int VT_I4 ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4( DWORD *values, DWORD count, VARIANT *var )
{
    SAFEARRAY *sa;
    HRESULT hr;
    LONG i;

    if (!(sa = FUNC0( VT_I4, 0, count ))) return E_OUTOFMEMORY;
    for (i = 0; i < count; i++)
    {
        if ((hr = FUNC2( sa, &i, &values[i] )) != S_OK)
        {
            FUNC1( sa );
            return hr;
        }
    }
    FUNC3( VT_I4|VT_ARRAY, 0, sa, var );
    return S_OK;
}