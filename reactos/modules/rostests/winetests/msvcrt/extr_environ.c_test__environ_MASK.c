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
 int /*<<< orphan*/  FUNC0 (int*,char***,char***,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 char*** FUNC2 () ; 
 char*** p_environ ; 
 int /*<<< orphan*/  FUNC3 (char***) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    int argc;
    char **argv, **envp = NULL;
    int i, mode = 0;

    FUNC1( p_environ != NULL, "Expected the pointer to _environ to be non-NULL\n" );
    if (p_environ)
        FUNC1( *p_environ != NULL, "Expected _environ to be initialized on startup\n" );

    if (!p_environ || !*p_environ)
    {
        FUNC4( "_environ pointers are not valid\n" );
        return;
    }

    /* Examine the returned pointer from __p__environ(), if available. */
    if (&p__p__environ)
    {
        FUNC1( *FUNC2() == *p_environ,
            "Expected _environ pointers to be identical\n" );
    }
    else
        FUNC4( "__p__environ() is not available\n" );

    if (&p_get_environ)
    {
        char **retptr;
        FUNC3(&retptr);
        FUNC1( retptr == *p_environ,
            "Expected _environ pointers to be identical\n" );
    }
    else
        FUNC6( "_get_environ() is not available\n" );

    /* Note that msvcrt from Windows versions older than Vista
     * expects the mode pointer parameter to be valid.*/
    FUNC0(&argc, &argv, &envp, 0, &mode);

    FUNC1( envp != NULL, "Expected initial environment block pointer to be non-NULL\n" );
    if (!envp)
    {
        FUNC4( "Initial environment block pointer is not valid\n" );
        return;
    }

    for (i = 0; ; i++)
    {
        if ((*p_environ)[i])
        {
            FUNC1( envp[i] != NULL, "Expected environment block pointer element to be non-NULL\n" );
            FUNC1( !FUNC5((*p_environ)[i], envp[i]),
                "Expected _environ and environment block pointer strings (%s vs. %s) to match\n",
                (*p_environ)[i], envp[i] );
        }
        else
        {
            FUNC1( !envp[i], "Expected environment block pointer element to be NULL, got %p\n", envp[i] );
            break;
        }
    }
}