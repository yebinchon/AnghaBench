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
typedef  int /*<<< orphan*/  static_buffer ;
typedef  int /*<<< orphan*/  (* iterate_fields_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/ * PCWSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static BOOL FUNC9( HINF hinf, PCWSTR section, PCWSTR key,
                                    iterate_fields_func callback, void *arg )
{
    WCHAR static_buffer[200];
    WCHAR *buffer = static_buffer;
    DWORD size = sizeof(static_buffer)/sizeof(WCHAR);
    INFCONTEXT context;
    BOOL ret = FALSE;

    BOOL ok = FUNC3( hinf, section, key, &context );
    while (ok)
    {
        UINT i, count = FUNC5( &context );
        for (i = 1; i <= count; i++)
        {
            if (!(buffer = FUNC8( &context, i, buffer, static_buffer, &size )))
                goto done;
            if (!callback( hinf, buffer, arg ))
            {
                FUNC6("callback failed for %s %s err %d\n",
                     FUNC7(section), FUNC7(buffer), FUNC0() );
                goto done;
            }
        }
        ok = FUNC4( &context, key, &context );
    }
    ret = TRUE;
 done:
    if (buffer != static_buffer) FUNC2( FUNC1(), 0, buffer );
    return ret;
}