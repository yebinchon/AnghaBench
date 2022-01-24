#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  lpszLocalFileName; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_1__* LPINTERNET_CACHE_ENTRY_INFOW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

UINT FUNC9( LPCWSTR szUrl, LPWSTR filename )
{
    LPINTERNET_CACHE_ENTRY_INFOW cache_entry;
    DWORD size = 0;
    HRESULT hr;

    /* call will always fail, because size is 0,
     * but will return ERROR_FILE_NOT_FOUND first
     * if the file doesn't exist
     */
    FUNC2( szUrl, NULL, &size );
    if ( FUNC1() != ERROR_FILE_NOT_FOUND )
    {
        cache_entry = FUNC7( size );
        if ( !FUNC2( szUrl, cache_entry, &size ) )
        {
            UINT error = FUNC1();
            FUNC8( cache_entry );
            return error;
        }

        FUNC6( filename, cache_entry->lpszLocalFileName );
        FUNC8( cache_entry );
        return ERROR_SUCCESS;
    }

    hr = FUNC3( NULL, szUrl, filename, MAX_PATH, 0, NULL );
    if ( FUNC0(hr) )
    {
        FUNC4("failed to download %s to cache file\n", FUNC5(szUrl));
        return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}