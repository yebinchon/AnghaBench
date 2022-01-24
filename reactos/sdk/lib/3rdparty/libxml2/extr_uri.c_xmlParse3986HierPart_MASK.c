#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlURIPtr ;
struct TYPE_7__ {int port; int /*<<< orphan*/ * path; int /*<<< orphan*/ * server; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,char const**) ; 
 int FUNC3 (TYPE_1__*,char const**) ; 
 int FUNC4 (TYPE_1__*,char const**) ; 
 int FUNC5 (TYPE_1__*,char const**) ; 

__attribute__((used)) static int
FUNC6(xmlURIPtr uri, const char **str)
{
    const char *cur;
    int ret;

    cur = *str;

    if ((*cur == '/') && (*(cur + 1) == '/')) {
        cur += 2;
	ret = FUNC2(uri, &cur);
	if (ret != 0) return(ret);
	if (uri->server == NULL)
	    uri->port = -1;
	ret = FUNC3(uri, &cur);
	if (ret != 0) return(ret);
	*str = cur;
	return(0);
    } else if (*cur == '/') {
        ret = FUNC4(uri, &cur);
	if (ret != 0) return(ret);
    } else if (FUNC0(cur)) {
        ret = FUNC5(uri, &cur);
	if (ret != 0) return(ret);
    } else {
	/* path-empty is effectively empty */
	if (uri != NULL) {
	    if (uri->path != NULL) FUNC1(uri->path);
	    uri->path = NULL;
	}
    }
    *str = cur;
    return (0);
}