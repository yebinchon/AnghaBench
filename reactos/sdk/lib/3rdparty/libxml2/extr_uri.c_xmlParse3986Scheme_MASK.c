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
struct TYPE_3__ {int /*<<< orphan*/ * scheme; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(xmlURIPtr uri, const char **str) {
    const char *cur;

    if (str == NULL)
	return(-1);

    cur = *str;
    if (!FUNC0(cur))
	return(2);
    cur++;
    while (FUNC0(cur) || FUNC1(cur) ||
           (*cur == '+') || (*cur == '-') || (*cur == '.')) cur++;
    if (uri != NULL) {
	if (uri->scheme != NULL) FUNC3(uri->scheme);
	uri->scheme = FUNC2(*str, cur - *str);
    }
    *str = cur;
    return(0);
}