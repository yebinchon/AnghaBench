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
typedef  int /*<<< orphan*/  request_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* LPDWORD ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC5( request_t *request, DWORD level, LPDWORD supported, LPDWORD first )
{
    DWORD index = 0, supported_schemes = 0, first_scheme = 0;
    BOOL ret = FALSE;

    for (;;)
    {
        WCHAR *buffer;
        DWORD size, scheme;

        size = 0;
        FUNC4( request, level, NULL, NULL, &size, &index );
        if (FUNC1() != ERROR_INSUFFICIENT_BUFFER) break;

        index--;
        if (!(buffer = FUNC2( size ))) return FALSE;
        if (!FUNC4( request, level, NULL, buffer, &size, &index ))
        {
            FUNC3( buffer );
            return FALSE;
        }
        scheme = FUNC0( buffer );
        FUNC3( buffer );
        if (!scheme) continue;

        if (!first_scheme) first_scheme = scheme;
        supported_schemes |= scheme;

        ret = TRUE;
    }

    if (ret)
    {
        *supported = supported_schemes;
        *first = first_scheme;
    }
    return ret;
}