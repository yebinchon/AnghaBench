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
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  cs_load_gecko ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pCompMgr ; 

BOOL FUNC8(void)
{
    PRUnichar gre_path[MAX_PATH];
    BOOL ret = FALSE;

    static DWORD loading_thread;

    FUNC4("()\n");

    /* load_gecko may be called recursively */
    if(loading_thread == FUNC1())
        return pCompMgr != NULL;

    FUNC0(&cs_load_gecko);

    if(!loading_thread) {
        loading_thread = FUNC1();

#ifdef __REACTOS__
        if(load_wine_gecko(gre_path))
#else
        if(FUNC7(gre_path)
           || (FUNC6() && FUNC7(gre_path)))
#endif
            ret = FUNC5(gre_path);
        else
           FUNC3("Could not load wine-gecko. HTML rendering will be disabled.\n");
    }else {
        ret = pCompMgr != NULL;
    }

    FUNC2(&cs_load_gecko);

    return ret;
}