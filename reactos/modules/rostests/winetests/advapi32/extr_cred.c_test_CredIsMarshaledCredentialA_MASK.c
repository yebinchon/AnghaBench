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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(void)
{
    int i;
    BOOL res;
    BOOL expected = TRUE;

    const char * ptr[] = {
        /* CertCredential */
        "@@BXlmblBAAAAAAAAAAAAAAAAAAAAA",   /* hash for 'W','i','n','e' */
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAAA",   /* hash for all 0 */

        /* UsernameTargetCredential */
        "@@CCAAAAA0BA",                     /* "t" */
        "@@CIAAAAA0BQZAMHA0BA",             /* "test" */

        /* todo: BinaryBlobCredential */

        /* not marshaled names return always FALSE */
        "winetest",
        "",
        "@@",
        "@@A",
        "@@AA",
        "@@AAA",
        "@@B",
        "@@BB",
        "@@BBB",

        /* CertCredential */
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAAAA",  /* to long */
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA",    /* to short */
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA+",   /* bad char */
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA:",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA>",
        "@@BAAAAAAAAAAAAAAAAAAAAAAAAAA<",

        "@@C",
        "@@CC",
        "@@CCC",
        "@@D",
        "@@DD",
        "@@DDD",
        NULL};

    for (i = 0; ptr[i]; i++)
    {
        if (*ptr[i] != '@')
            expected = FALSE;

        FUNC1(0xdeadbeef);
        res = FUNC3(ptr[i]);
        if (expected)
            FUNC2(res != FALSE, "%d: got %d and %u for %s (expected TRUE)\n", i, res, FUNC0(), ptr[i]);
        else
        {
            /* Windows returns ERROR_INVALID_PARAMETER here, but that's not documented */
            FUNC2(!res, "%d: got %d and %u for %s (expected FALSE)\n", i, res, FUNC0(), ptr[i]);
        }
    }
}