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
typedef  int /*<<< orphan*/  xmlURIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC3(xmlURIPtr uri, const char *str) {
    int ret;

    if (str == NULL)
	return(-1);
    FUNC0(uri);

    /*
     * Try first to parse absolute refs, then fallback to relative if
     * it fails.
     */
    ret = FUNC2(uri, str);
    if (ret != 0) {
	FUNC0(uri);
        ret = FUNC1(uri, str);
	if (ret != 0) {
	    FUNC0(uri);
	    return(ret);
	}
    }
    return(0);
}