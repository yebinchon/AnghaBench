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
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char***,char***,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char***,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 char*** FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char***) ; 
 char*** p_wenviron ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    static const WCHAR cat_eq_dogW[] = {'c','a','t','=','d','o','g',0};
    static const WCHAR cat_eqW[] = {'c','a','t','=',0};

    int argc;
    char **argv, **envp = NULL;
    WCHAR **wargv, **wenvp = NULL;
    int i, mode = 0;

    FUNC4( p_wenviron != NULL, "Expected the pointer to _wenviron to be non-NULL\n" );
    if (p_wenviron)
        FUNC4( *p_wenviron == NULL, "Expected _wenviron to be NULL, got %p\n", *p_wenviron );
    else
    {
        FUNC8( "Pointer to _wenviron is not valid\n" );
        return;
    }

    /* Examine the returned pointer from __p__wenviron(), if available. */
    if (&p__p__wenviron)
    {
        FUNC4( *FUNC5() == NULL,
            "Expected _wenviron pointers to be NULL\n" );
    }
    else
        FUNC7( "__p__wenviron() is not available\n" );

    if (&p_get_wenviron)
    {
        WCHAR **retptr;
        FUNC6(&retptr);
        FUNC4( retptr == NULL,
            "Expected _wenviron pointers to be NULL\n" );
    }
    else
        FUNC8( "_get_wenviron() is not available\n" );

    /* __getmainargs doesn't initialize _wenviron. */
    FUNC0(&argc, &argv, &envp, 0, &mode);

    FUNC4( *p_wenviron == NULL, "Expected _wenviron to be NULL, got %p\n", *p_wenviron);
    FUNC4( envp != NULL, "Expected initial environment block pointer to be non-NULL\n" );
    if (!envp)
    {
        FUNC7( "Initial environment block pointer is not valid\n" );
        return;
    }

    /* Neither does calling the non-Unicode environment manipulation functions. */
    FUNC4( FUNC2("cat=dog") == 0, "failed setting cat=dog\n" );
    FUNC4( *p_wenviron == NULL, "Expected _wenviron to be NULL, got %p\n", *p_wenviron);
    FUNC4( FUNC2("cat=") == 0, "failed deleting cat\n" );

    /* _wenviron isn't initialized until __wgetmainargs is called or
     * one of the Unicode environment manipulation functions is called. */
    FUNC4( FUNC3(cat_eq_dogW) == 0, "failed setting cat=dog\n" );
    FUNC4( *p_wenviron != NULL, "Expected _wenviron to be non-NULL\n" );
    FUNC4( FUNC3(cat_eqW) == 0, "failed deleting cat\n" );

    FUNC1(&argc, &wargv, &wenvp, 0, &mode);

    FUNC4( *p_wenviron != NULL, "Expected _wenviron to be non-NULL\n" );
    FUNC4( wenvp != NULL, "Expected initial environment block pointer to be non-NULL\n" );
    if (!wenvp)
    {
        FUNC7( "Initial environment block pointer is not valid\n" );
        return;
    }

    /* Examine the returned pointer from __p__wenviron(),
     * if available, after _wenviron is initialized. */
    if (&p__p__wenviron)
    {
        FUNC4( *FUNC5() == *p_wenviron,
            "Expected _wenviron pointers to be identical\n" );
    }

    if (&p_get_wenviron)
    {
        WCHAR **retptr;
        FUNC6(&retptr);
        FUNC4( retptr == *p_wenviron,
            "Expected _wenviron pointers to be identical\n" );
    }

    for (i = 0; ; i++)
    {
        if ((*p_wenviron)[i])
        {
            FUNC4( wenvp[i] != NULL, "Expected environment block pointer element to be non-NULL\n" );
            FUNC4( !FUNC10((*p_wenviron)[i], wenvp[i]),
                "Expected _wenviron and environment block pointer strings (%s vs. %s) to match\n",
                FUNC9((*p_wenviron)[i]), FUNC9(wenvp[i]) );
        }
        else
        {
            FUNC4( !wenvp[i], "Expected environment block pointer element to be NULL, got %p\n", wenvp[i] );
            break;
        }
    }
}