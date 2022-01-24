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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int VT_ARRAY ; 
 int VT_UI1 ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7( void *data, DWORD size, VARIANT *var )
{
    SAFEARRAY *sa;
    void *sadata;
    HRESULT hr;

    if (!(sa = FUNC2( VT_UI1, 0, size ))) return E_OUTOFMEMORY;

    hr = FUNC1( sa, &sadata );

    if (FUNC0(hr))
    {
        FUNC5( sadata, data, size );

        FUNC4( sa );
    }
    else
    {
        FUNC3( sa );
        return hr;
    }

    FUNC6( VT_UI1|VT_ARRAY, 0, sa, var );
    return S_OK;
}