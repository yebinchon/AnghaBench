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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8 (const char *in, const char *out)
{
    bool isutf8 = !FUNC6 (in, out);
    char *str = FUNC7 (in);
    if (str == NULL)
        FUNC2 ();

    if (isutf8)
        FUNC5 ("\"%s\" should be accepted...\n", in);
    else
        FUNC5 ("\"%s\" should be rewritten as \"%s\"...\n", in, out);

    if ((FUNC1 (in) != NULL) != isutf8)
    {
        FUNC5 (" ERROR: IsUTF8 (%s) failed\n", in);
        FUNC3 (1);
    }

    if ((FUNC0 (str) != NULL) != isutf8)
    {
        FUNC5 (" ERROR: EnsureUTF8 (%s) failed\n", in);
        FUNC3 (2);
    }

    if (FUNC6 (str, out))
    {
        FUNC5 (" ERROR: got \"%s\"\n", str);
        FUNC3 (3);
    }

    if ((FUNC0 (str) == NULL) || FUNC1 (str) == NULL)
    {
        FUNC5 (" ERROR: EnsureUTF8 (%s) is not UTF-8\n", in);
        FUNC3 (4);
    }
    FUNC4 (str);
}