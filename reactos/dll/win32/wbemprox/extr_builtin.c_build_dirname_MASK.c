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
typedef  int UINT ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC3( const WCHAR *path, UINT *ret_len )
{
    const WCHAR *p = path, *start;
    UINT len, i;
    WCHAR *ret;

    if (!FUNC1( p[0] ) || p[1] != ':' || p[2] != '\\' || p[3] != '\\' || !p[4]) return NULL;
    start = path + 4;
    len = FUNC2( start );
    p = start + len - 1;
    if (*p == '\\') return NULL;

    while (p >= start && *p != '\\') { len--; p--; };
    while (p >= start && *p == '\\') { len--; p--; };

    if (!(ret = FUNC0( (len + 1) * sizeof(WCHAR) ))) return NULL;
    for (i = 0, p = start; p < start + len; p++)
    {
        if (p[0] == '\\' && p[1] == '\\')
        {
            ret[i++] = '\\';
            p++;
        }
        else ret[i++] = *p;
    }
    ret[i] = 0;
    *ret_len = i;
    return ret;
}