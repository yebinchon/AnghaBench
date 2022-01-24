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
struct TYPE_3__ {int cleanup; int /*<<< orphan*/ * user; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(xmlURIPtr uri, const char **str)
{
    const char *cur;

    cur = *str;
    while (FUNC2(cur) || FUNC0(cur) ||
           FUNC1(cur) || (*cur == ':'))
	FUNC3(cur);
    if (*cur == '@') {
	if (uri != NULL) {
	    if (uri->user != NULL) FUNC5(uri->user);
	    if (uri->cleanup & 2)
		uri->user = FUNC4(*str, cur - *str);
	    else
		uri->user = FUNC6(*str, cur - *str, NULL);
	}
	*str = cur;
	return(0);
    }
    return(1);
}