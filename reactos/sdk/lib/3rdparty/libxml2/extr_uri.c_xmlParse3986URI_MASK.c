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
 int FUNC1 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static int
FUNC5(xmlURIPtr uri, const char *str) {
    int ret;

    ret = FUNC4(uri, &str);
    if (ret != 0) return(ret);
    if (*str != ':') {
	return(1);
    }
    str++;
    ret = FUNC2(uri, &str);
    if (ret != 0) return(ret);
    if (*str == '?') {
	str++;
	ret = FUNC3(uri, &str);
	if (ret != 0) return(ret);
    }
    if (*str == '#') {
	str++;
	ret = FUNC1(uri, &str);
	if (ret != 0) return(ret);
    }
    if (*str != 0) {
	FUNC0(uri);
	return(1);
    }
    return(0);
}