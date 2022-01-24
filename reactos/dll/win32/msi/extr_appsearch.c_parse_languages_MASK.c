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
typedef  scalar_t__ WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  LANGID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (scalar_t__*,char) ; 
 scalar_t__* FUNC4 (scalar_t__ const*) ; 

__attribute__((used)) static LANGID *FUNC5( const WCHAR *languages, DWORD *num_ids )
{
    UINT i, count = 1;
    WCHAR *str = FUNC4( languages ), *p, *q;
    LANGID *ret;

    if (!str) return NULL;
    for (p = q = str; (q = FUNC3( q, ',' )); q++) count++;

    if (!(ret = FUNC1( count * sizeof(LANGID) )))
    {
        FUNC2( str );
        return NULL;
    }
    i = 0;
    while (*p)
    {
        q = FUNC3( p, ',' );
        if (q) *q = 0;
        ret[i] = FUNC0( p );
        if (!q) break;
        p = q + 1;
        i++;
    }
    FUNC2( str );
    *num_ids = count;
    return ret;
}