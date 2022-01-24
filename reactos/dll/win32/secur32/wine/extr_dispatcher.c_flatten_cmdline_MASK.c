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
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char* const) ; 
 scalar_t__ FUNC5 (char* const) ; 

char* FUNC6(const char *prog, char* const argv[])
{
    int i;
    SIZE_T argstr_size = 0;
    char *argstr, *p;

    /* Compute space needed for the new string, and allocate it */
    argstr_size += FUNC5(prog) + 3; // 3 == 2 quotes between 'prog', and 1 space
    for(i = 0; argv[i] != NULL; ++i)
    {
        argstr_size += FUNC5(argv[i]) + 1; // 1 for space
    }
    argstr = FUNC2(FUNC1(), 0, (argstr_size + 1) * sizeof(CHAR));
    if (argstr == NULL)
    {
        FUNC0("ERROR: Not enough memory\n");
        return NULL;
    }

    /* Copy the contents and NULL-terminate the string */
    p = argstr;
    FUNC4(p, "\"");    // Open quote
    FUNC3(p, prog);
    FUNC3(p, "\" ");   // Close quote + space
    p += FUNC5(p);
    for(i = 0; argv[i] != NULL; ++i)
    {
        FUNC4(p, argv[i]);
        p += FUNC5(argv[i]);
        *p++ = ' ';
    }
    *p = '\0';

    return argstr;
}