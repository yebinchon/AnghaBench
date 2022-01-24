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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  SERVICE_STATUS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  SC_MANAGER_ENUMERATE_SERVICE ; 
 int SERVICE_PAUSE_CONTINUE ; 
 int SERVICE_START ; 
 int SERVICE_STOP ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VT_UI4 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7( const WCHAR *name, DWORD control, VARIANT *retval )
{
    SC_HANDLE manager, service = NULL;
    SERVICE_STATUS status;
    UINT error = 0;

    if (!(manager = FUNC3( NULL, NULL, SC_MANAGER_ENUMERATE_SERVICE )))
    {
        error = FUNC5( FUNC2() );
        goto done;
    }
    if (!(service = FUNC4( manager, name, SERVICE_STOP|SERVICE_START|SERVICE_PAUSE_CONTINUE )))
    {
        error = FUNC5( FUNC2() );
        goto done;
    }
    if (!FUNC1( service, control, &status )) error = FUNC5( FUNC2() );
    FUNC0( service );

done:
    FUNC6( VT_UI4, error, NULL, retval );
    if (manager) FUNC0( manager );
    return S_OK;
}