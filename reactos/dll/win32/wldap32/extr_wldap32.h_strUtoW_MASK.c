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
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static inline LPWSTR FUNC2( char *str )
{
    LPWSTR ret = NULL;
    if (str)
    {
        DWORD len = FUNC0( CP_UTF8, 0, str, -1, NULL, 0 );
        if ((ret = FUNC1( len * sizeof(WCHAR) )))
            FUNC0( CP_UTF8, 0, str, -1, ret, len );
    }
    return ret;
}