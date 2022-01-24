#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_9__ {int /*<<< orphan*/  display_name; } ;
struct TYPE_8__ {TYPE_1__* File; } ;
struct TYPE_7__ {int /*<<< orphan*/ * TargetPath; } ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_2__ MSIFILEPATCH ;
typedef  TYPE_3__ MSIASSEMBLY ;
typedef  int /*<<< orphan*/  IAssemblyName ;
typedef  int /*<<< orphan*/  IAssemblyEnum ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_SUCCESS ; 
 scalar_t__ E_NOT_SUFFICIENT_BUFFER ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static UINT FUNC14( MSIPACKAGE *package, MSIASSEMBLY *assembly, MSIFILEPATCH *patch )
{
    UINT r = ERROR_FUNCTION_FAILED;
    IAssemblyName *name;
    IAssemblyEnum *iter;

    if (!(iter = FUNC10( package, assembly->display_name )))
        return ERROR_FUNCTION_FAILED;

    while ((FUNC4( iter, NULL, &name, 0 ) == S_OK))
    {
        WCHAR *displayname, *path;
        UINT len = 0;
        HRESULT hr;

        hr = FUNC6( name, NULL, &len, 0 );
        if (hr != E_NOT_SUFFICIENT_BUFFER || !(displayname = FUNC9( len * sizeof(WCHAR) )))
            break;

        hr = FUNC6( name, displayname, &len, 0 );
        if (FUNC2( hr ))
        {
            FUNC11( displayname );
            break;
        }

        if ((path = FUNC12( package, displayname )))
        {
            if (!FUNC0( path, patch->File->TargetPath, FALSE ))
            {
                FUNC1("Failed to copy file %s -> %s (%u)\n", FUNC8(path),
                    FUNC8(patch->File->TargetPath), FUNC3() );
                FUNC11( path );
                FUNC11( displayname );
                FUNC7( name );
                break;
            }
            r = FUNC13( package, patch );
            FUNC11( path );
        }

        FUNC11( displayname );
        FUNC7( name );
        if (r == ERROR_SUCCESS) break;
    }

    FUNC5( iter );
    return r;
}