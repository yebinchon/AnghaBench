#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int cleanup; int /*<<< orphan*/ * fragment; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(xmlURIPtr uri, const char **str)
{
    const char *cur;

    if (str == NULL)
        return (-1);

    cur = *str;

    while ((FUNC0(cur)) || (*cur == '/') || (*cur == '?') ||
           (*cur == '[') || (*cur == ']') ||
           ((uri != NULL) && (uri->cleanup & 1) && (FUNC1(cur))))
        FUNC2(cur);
    if (uri != NULL) {
        if (uri->fragment != NULL)
            FUNC4(uri->fragment);
	if (uri->cleanup & 2)
	    uri->fragment = FUNC3(*str, cur - *str);
	else
	    uri->fragment = FUNC5(*str, cur - *str, NULL);
    }
    *str = cur;
    return (0);
}