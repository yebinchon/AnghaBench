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
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ CSTR_EQUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int LOCALE_USE_CP_ACP ; 
 int NORM_IGNORECASE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static BOOL FUNC8(const WCHAR * env, const char * var, char ** result)
{
    const WCHAR * p = env;
    int envlen, varlen, buflen;
    char buf[256];

    if (!env || !var || !result) return FALSE;

    varlen = FUNC7(var);
    do
    {
        if (!FUNC4( CP_ACP, 0, p, -1, buf, sizeof(buf), NULL, NULL )) buf[sizeof(buf)-1] = 0;
        envlen = FUNC7(buf);
        if (FUNC0(FUNC2(), NORM_IGNORECASE|LOCALE_USE_CP_ACP, buf, FUNC6(envlen, varlen), var, varlen) == CSTR_EQUAL)
        {
            if (buf[varlen] == '=')
            {
                buflen = FUNC7(buf);
                *result = FUNC3(FUNC1(), 0, buflen + 1);
                if (!*result) return FALSE;
                FUNC5(*result, buf, buflen + 1);
                return TRUE;
            }
        }
        while (*p) p++;
        p++;
    } while (*p);
    return FALSE;
}