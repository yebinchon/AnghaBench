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

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(int *argc, char ***argv)
{
    WCHAR **argvw;
    int size=0, i;
    char *current_arg;

    argvw = FUNC0(FUNC1(), argc);

    for (i=0; i<*argc; i++)
    {
        size += sizeof(char*);
        size += FUNC5(CP_UTF8, 0, argvw[i], -1, NULL, 0, NULL, NULL);
    }
    size += sizeof(char*);

    *argv = FUNC3(FUNC2(), 0, size);
    current_arg = (char*)(*argv + *argc + 1);

    for (i=0; i<*argc; i++)
    {
        (*argv)[i] = current_arg;
        current_arg += FUNC5(CP_UTF8, 0, argvw[i], -1, current_arg, size, NULL, NULL);
    }

    (*argv)[*argc] = NULL;

    FUNC4(FUNC2(), 0, argvw);
}