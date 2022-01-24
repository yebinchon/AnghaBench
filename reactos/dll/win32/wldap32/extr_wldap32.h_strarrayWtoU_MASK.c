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
typedef  scalar_t__ LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 char** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*) ; 

__attribute__((used)) static inline char **FUNC3( LPWSTR *strarray )
{
    char **strarrayU = NULL;
    DWORD size;

    if (strarray)
    {
        size = sizeof(char*) * (FUNC2( strarray ) + 1);
        if ((strarrayU = FUNC0( size )))
        {
            LPWSTR *p = strarray;
            char **q = strarrayU;

            while (*p) *q++ = FUNC1( *p++ );
            *q = NULL;
        }
    }
    return strarrayU;
}