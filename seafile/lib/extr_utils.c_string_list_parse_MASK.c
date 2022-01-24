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
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 char** FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 

GList *
FUNC5 (const char *list_in_str, const char *seperator)
{
    if (!list_in_str)
        return NULL;

    GList *list = NULL;
    char **array = FUNC4 (list_in_str, seperator, 0);
    char **ptr;

    for (ptr = array; *ptr; ptr++) {
        list = FUNC0 (list, FUNC2(*ptr));
    }
    list = FUNC1 (list);
    
    FUNC3 (array);
    return list;
}