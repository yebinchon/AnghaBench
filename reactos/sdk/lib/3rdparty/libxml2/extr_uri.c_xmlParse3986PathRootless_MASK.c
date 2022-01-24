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
struct TYPE_3__ {int cleanup; int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(xmlURIPtr uri, const char **str)
{
    const char *cur;
    int ret;

    cur = *str;

    ret = FUNC2(&cur, 0, 0);
    if (ret != 0) return(ret);
    while (*cur == '/') {
        cur++;
	ret = FUNC2(&cur, 0, 1);
	if (ret != 0) return(ret);
    }
    if (uri != NULL) {
	if (uri->path != NULL) FUNC1(uri->path);
        if (cur != *str) {
            if (uri->cleanup & 2)
                uri->path = FUNC0(*str, cur - *str);
            else
                uri->path = FUNC3(*str, cur - *str, NULL);
        } else {
            uri->path = NULL;
        }
    }
    *str = cur;
    return (0);
}