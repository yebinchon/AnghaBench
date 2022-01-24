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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 

__attribute__((used)) static WCHAR *FUNC3( const WCHAR *str, unsigned int *len )
{
    WCHAR *ret;
    const WCHAR *p = str;

    if (*p++ != '\"') return NULL;
    while (*p && *p != '\"') p++;
    if (!*p) return NULL;

    *len = p - str;
    if (!(ret = FUNC1( FUNC0(), 0, *len * sizeof(WCHAR) ))) return NULL;
    FUNC2( ret, str + 1, (*len - 1) * sizeof(WCHAR) );
    ret[*len - 1] = 0;
    return ret;
}