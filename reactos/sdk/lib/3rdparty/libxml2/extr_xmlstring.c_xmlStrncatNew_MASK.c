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
typedef  scalar_t__ xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__* FUNC3 (scalar_t__ const*) ; 
 int FUNC4 (scalar_t__ const*) ; 
 scalar_t__* FUNC5 (scalar_t__ const*,int) ; 

xmlChar *
FUNC6(const xmlChar *str1, const xmlChar *str2, int len) {
    int size;
    xmlChar *ret;

    if (len < 0) {
        len = FUNC4(str2);
        if (len < 0)
            return(NULL);
    }
    if ((str2 == NULL) || (len == 0))
        return(FUNC3(str1));
    if (str1 == NULL)
        return(FUNC5(str2, len));

    size = FUNC4(str1);
    if (size < 0)
        return(NULL);
    ret = (xmlChar *) FUNC2((size + len + 1) * sizeof(xmlChar));
    if (ret == NULL) {
        FUNC1(NULL, NULL);
        return(FUNC5(str1, size));
    }
    FUNC0(ret, str1, size * sizeof(xmlChar));
    FUNC0(&ret[size], str2, len * sizeof(xmlChar));
    ret[size + len] = 0;
    return(ret);
}