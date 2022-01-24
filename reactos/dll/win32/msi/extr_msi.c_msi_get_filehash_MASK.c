#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/  digest; } ;
struct TYPE_7__ {int /*<<< orphan*/  dwData; } ;
typedef  TYPE_1__ MSIFILEHASHINFO ;
typedef  TYPE_2__ MD5_CTX ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

UINT FUNC13( const WCHAR *path, MSIFILEHASHINFO *hash )
{
    HANDLE handle, mapping;
    void *p;
    DWORD length;
    UINT r = ERROR_FUNCTION_FAILED;

    handle = FUNC2( path, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_DELETE, NULL, OPEN_EXISTING, 0, NULL );
    if (handle == INVALID_HANDLE_VALUE)
    {
        FUNC10("can't open file %u\n", FUNC4());
        return ERROR_FILE_NOT_FOUND;
    }
    if ((length = FUNC3( handle, NULL )))
    {
        if ((mapping = FUNC1( handle, NULL, PAGE_READONLY, 0, 0, NULL )))
        {
            if ((p = FUNC8( mapping, FILE_MAP_READ, 0, 0, length )))
            {
                MD5_CTX ctx;

                FUNC6( &ctx );
                FUNC7( &ctx, p, length );
                FUNC5( &ctx );
                FUNC9( p );

                FUNC11( hash->dwData, ctx.digest, sizeof(hash->dwData) );
                r = ERROR_SUCCESS;
            }
            FUNC0( mapping );
        }
    }
    else
    {
        /* Empty file -> set hash to 0 */
        FUNC12( hash->dwData, 0, sizeof(hash->dwData) );
        r = ERROR_SUCCESS;
    }

    FUNC0( handle );
    return r;
}