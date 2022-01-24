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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static void FUNC3 (const char *h, const char *n, ssize_t offset)
{
    FUNC1 ("\"%s\" should %sbe found in \"%s\"...\n", n,
            (offset != -1) ? "" : "not ", h);

    const char *ret = FUNC2 (h, n);
    if (offset == -1)
    {
        if (ret != NULL)
        {
            FUNC1 ("ERROR: got \"%s\"\n", ret);
            FUNC0 (10);
        }
    }
    else
    {
        if (ret == NULL)
        {
            FUNC1 ("ERROR: not found\n");
            FUNC0 (11);
        }
        if ((ret - h) != offset)
        {
            FUNC1 ("ERROR: got \"%s\" instead of \"%s\"\n",
                    ret, h + offset);
            FUNC0 (12);
        }
    }
}