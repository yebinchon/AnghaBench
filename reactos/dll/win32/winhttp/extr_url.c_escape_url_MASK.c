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
typedef  scalar_t__ const* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__ const*,int) ; 
 scalar_t__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__ const*,int) ; 
 scalar_t__ FUNC3 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__ const*) ; 
 scalar_t__* FUNC5 (scalar_t__ const*,char) ; 

__attribute__((used)) static WCHAR *FUNC6( LPCWSTR url, DWORD *len )
{
    WCHAR *ret;
    const WCHAR *p, *q;

    if ((p = q = FUNC5( url, '/' )))
    {
        while (*q)
        {
            if (FUNC3( *q )) *len += 2;
            q++;
        }
    }
    if (!(ret = FUNC1( (*len + 1) * sizeof(WCHAR) ))) return NULL;
    if (!p) FUNC4( ret, url );
    else
    {
        FUNC2( ret, url, (p - url) * sizeof(WCHAR) );
        FUNC0( ret + (p - url), p, q - p );
    }
    return ret;
}