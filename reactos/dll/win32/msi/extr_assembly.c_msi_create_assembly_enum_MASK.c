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
typedef  int /*<<< orphan*/  const WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  int /*<<< orphan*/  IAssemblyName ;
typedef  int /*<<< orphan*/  IAssemblyEnum ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ASM_CACHE_GAC ; 
 int /*<<< orphan*/  CANOF_PARSE_DISPLAY_NAME ; 
 scalar_t__ E_NOT_SUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

IAssemblyEnum *FUNC7( MSIPACKAGE *package, const WCHAR *displayname )
{
    HRESULT hr;
    IAssemblyName *name;
    IAssemblyEnum *ret;
    WCHAR *str;
    UINT len = 0;

    if (!&pCreateAssemblyNameObject || !&pCreateAssemblyEnum) return NULL;

    hr = FUNC6( &name, displayname, CANOF_PARSE_DISPLAY_NAME, NULL );
    if (FUNC0( hr )) return NULL;

    hr = FUNC1( name, &len, NULL );
    if (hr != E_NOT_SUFFICIENT_BUFFER || !(str = FUNC3( len * sizeof(WCHAR) )))
    {
        FUNC2( name );
        return NULL;
    }

    hr = FUNC1( name, &len, str );
    FUNC2( name );
    if (FUNC0( hr ))
    {
        FUNC4( str );
        return NULL;
    }

    hr = FUNC6( &name, str, 0, NULL );
    FUNC4( str );
    if (FUNC0( hr )) return NULL;

    hr = FUNC5( &ret, NULL, name, ASM_CACHE_GAC, NULL );
    FUNC2( name );
    if (FUNC0( hr )) return NULL;

    return ret;
}