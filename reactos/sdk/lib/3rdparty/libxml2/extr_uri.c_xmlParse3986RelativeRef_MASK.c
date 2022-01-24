#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlURIPtr ;
struct TYPE_10__ {int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,char const**) ; 
 int FUNC4 (TYPE_1__*,char const**) ; 
 int FUNC5 (TYPE_1__*,char const**) ; 
 int FUNC6 (TYPE_1__*,char const**) ; 
 int FUNC7 (TYPE_1__*,char const**) ; 
 int FUNC8 (TYPE_1__*,char const**) ; 

__attribute__((used)) static int
FUNC9(xmlURIPtr uri, const char *str) {
    int ret;

    if ((*str == '/') && (*(str + 1) == '/')) {
        str += 2;
	ret = FUNC3(uri, &str);
	if (ret != 0) return(ret);
	ret = FUNC5(uri, &str);
	if (ret != 0) return(ret);
    } else if (*str == '/') {
	ret = FUNC6(uri, &str);
	if (ret != 0) return(ret);
    } else if (FUNC0(str)) {
        ret = FUNC7(uri, &str);
	if (ret != 0) return(ret);
    } else {
	/* path-empty is effectively empty */
	if (uri != NULL) {
	    if (uri->path != NULL) FUNC2(uri->path);
	    uri->path = NULL;
	}
    }

    if (*str == '?') {
	str++;
	ret = FUNC8(uri, &str);
	if (ret != 0) return(ret);
    }
    if (*str == '#') {
	str++;
	ret = FUNC4(uri, &str);
	if (ret != 0) return(ret);
    }
    if (*str != 0) {
	FUNC1(uri);
	return(1);
    }
    return(0);
}