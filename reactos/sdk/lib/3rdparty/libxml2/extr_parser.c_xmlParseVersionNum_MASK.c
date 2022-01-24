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
typedef  int /*<<< orphan*/  xmlParserCtxtPtr ;
typedef  char xmlChar ;

/* Variables and functions */
 char CUR ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,int) ; 

xmlChar *
FUNC4(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = NULL;
    int len = 0;
    int size = 10;
    xmlChar cur;

    buf = (xmlChar *) FUNC2(size * sizeof(xmlChar));
    if (buf == NULL) {
	FUNC0(ctxt, NULL);
	return(NULL);
    }
    cur = CUR;
    if (!((cur >= '0') && (cur <= '9'))) {
	FUNC1(buf);
	return(NULL);
    }
    buf[len++] = cur;
    NEXT;
    cur=CUR;
    if (cur != '.') {
	FUNC1(buf);
	return(NULL);
    }
    buf[len++] = cur;
    NEXT;
    cur=CUR;
    while ((cur >= '0') && (cur <= '9')) {
	if (len + 1 >= size) {
	    xmlChar *tmp;

	    size *= 2;
	    tmp = (xmlChar *) FUNC3(buf, size * sizeof(xmlChar));
	    if (tmp == NULL) {
	        FUNC1(buf);
		FUNC0(ctxt, NULL);
		return(NULL);
	    }
	    buf = tmp;
	}
	buf[len++] = cur;
	NEXT;
	cur=CUR;
    }
    buf[len] = 0;
    return(buf);
}