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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ WBEM_E_INVALID_PARAMETER ; 
 scalar_t__ WBEM_E_NOT_FOUND ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  sink ; 
 char const* wqlW ; 

__attribute__((used)) static void FUNC6( IWbemServices *services )
{
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'P','r','o','c','e','s','s',0};
    BSTR wql = FUNC2( wqlW ), query = FUNC2( queryW );
    HRESULT hr;

    hr = FUNC1( services, wql, query, 0, NULL, NULL );
    FUNC5( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = FUNC1( services, wql, query, 0, NULL, &sink );
    FUNC5( hr == S_OK || FUNC4(hr == WBEM_E_NOT_FOUND), "got %08x\n", hr );

    hr =  FUNC0( services, NULL );
    FUNC5( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr =  FUNC0( services, &sink );
    FUNC5( hr == S_OK, "got %08x\n", hr );

    FUNC3( wql );
    FUNC3( query );
}