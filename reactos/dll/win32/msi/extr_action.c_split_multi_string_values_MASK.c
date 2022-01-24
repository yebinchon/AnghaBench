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
typedef  int /*<<< orphan*/ **** WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ ******** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/ ******* FUNC2 (int /*<<< orphan*/ **** const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **** const*) ; 

__attribute__((used)) static WCHAR **FUNC4( const WCHAR *str, DWORD len, DWORD *count )
{
    const WCHAR *p = str;
    WCHAR **ret;
    int i = 0;

    *count = 0;
    if (!str) return NULL;
    while ((p - str) < len)
    {
        p += FUNC3( p ) + 1;
        (*count)++;
    }
    if (!(ret = FUNC0( *count * sizeof(WCHAR *) ))) return NULL;
    p = str;
    while ((p - str) < len)
    {
        if (!(ret[i] = FUNC2( p )))
        {
            for (; i >= 0; i--) FUNC1( &ret[i] );
            FUNC1( ret );
            return NULL;
        }
        p += FUNC3( p ) + 1;
        i++;
    }
    return ret;
}