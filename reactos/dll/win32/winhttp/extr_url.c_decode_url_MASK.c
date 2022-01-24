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
typedef  char* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static WCHAR *FUNC3( LPCWSTR url, DWORD *len )
{
    const WCHAR *p = url;
    WCHAR hex[3], *q, *ret;

    if (!(ret = FUNC0( *len * sizeof(WCHAR) ))) return NULL;
    q = ret;
    while (*len > 0)
    {
        if (p[0] == '%' && FUNC1( p[1] ) && FUNC1( p[2] ))
        {
            hex[0] = p[1];
            hex[1] = p[2];
            hex[2] = 0;
            *q++ = FUNC2( hex, NULL, 16 );
            p += 3;
            *len -= 3;
        }
        else
        {
            *q++ = *p++;
            *len -= 1;
        }
    }
    *len = q - ret;
    return ret;
}