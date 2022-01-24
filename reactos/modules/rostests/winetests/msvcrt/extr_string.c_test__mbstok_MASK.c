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
 unsigned char* FUNC0 (int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    const unsigned char delim[] = "t";

    char str[] = "!.!test";
    unsigned char *ret;

    FUNC3(str, "!");

    ret = FUNC0(NULL, delim);
    /* most versions of msvcrt use the same buffer for strtok and _mbstok */
    FUNC2(!ret || FUNC1((char*)ret==str+4),
            "_mbstok(NULL, \"t\") = %p, expected NULL (%p)\n", ret, str);

    ret = FUNC0(NULL, delim);
    FUNC2(!ret, "_mbstok(NULL, \"t\") = %p, expected NULL\n", ret);
}