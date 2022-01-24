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
 int /*<<< orphan*/  RTLD_NEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC4 (const char *name)
{
    void *sym = FUNC2 (RTLD_NEXT, name);
    if (sym == NULL)
    {
        FUNC3 (stderr, "Cannot resolve symbol %s: %s\n", name,
                 FUNC1 ());
        FUNC0 ();
    }
    return sym;
}