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

xmlChar *
FUNC3(const xmlChar *cur, int len) {
    xmlChar *ret;

    if ((cur == NULL) || (len < 0)) return(NULL);
    ret = (xmlChar *) FUNC2((len + 1) * sizeof(xmlChar));
    if (ret == NULL) {
        FUNC1(NULL, NULL);
        return(NULL);
    }
    FUNC0(ret, cur, len * sizeof(xmlChar));
    ret[len] = 0;
    return(ret);
}