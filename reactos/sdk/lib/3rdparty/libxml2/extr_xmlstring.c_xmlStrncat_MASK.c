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
 scalar_t__ FUNC2 (scalar_t__*,int) ; 
 int FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (scalar_t__ const*,int) ; 

xmlChar *
FUNC5(xmlChar *cur, const xmlChar *add, int len) {
    int size;
    xmlChar *ret;

    if ((add == NULL) || (len == 0))
        return(cur);
    if (len < 0)
	return(NULL);
    if (cur == NULL)
        return(FUNC4(add, len));

    size = FUNC3(cur);
    if (size < 0)
        return(NULL);
    ret = (xmlChar *) FUNC2(cur, (size + len + 1) * sizeof(xmlChar));
    if (ret == NULL) {
        FUNC1(NULL, NULL);
        return(cur);
    }
    FUNC0(&ret[size], add, len * sizeof(xmlChar));
    ret[size + len] = 0;
    return(ret);
}