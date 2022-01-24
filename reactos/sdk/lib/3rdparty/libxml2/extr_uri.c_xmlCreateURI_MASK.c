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
typedef  int /*<<< orphan*/ * xmlURIPtr ;
typedef  int /*<<< orphan*/  xmlURI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

xmlURIPtr
FUNC3(void) {
    xmlURIPtr ret;

    ret = (xmlURIPtr) FUNC1(sizeof(xmlURI));
    if (ret == NULL) {
        FUNC2("creating URI structure\n");
	return(NULL);
    }
    FUNC0(ret, 0, sizeof(xmlURI));
    return(ret);
}