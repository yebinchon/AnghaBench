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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char**) ; 

__attribute__((used)) static inline LPWSTR *FUNC3( char **strarray )
{
    LPWSTR *strarrayW = NULL;
    DWORD size;

    if (strarray)
    {
        size = sizeof(WCHAR*) * (FUNC2( strarray ) + 1);
        if ((strarrayW = FUNC0( size )))
        {
            char **p = strarray;
            LPWSTR *q = strarrayW;

            while (*p) *q++ = FUNC1( *p++ );
            *q = NULL;
        }
    }
    return strarrayW;
}