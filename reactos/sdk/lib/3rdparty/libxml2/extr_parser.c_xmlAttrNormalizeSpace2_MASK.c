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
typedef  int /*<<< orphan*/ * xmlParserCtxtPtr ;
typedef  int xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* FUNC4 (int*,int) ; 

__attribute__((used)) static const xmlChar *
FUNC5(xmlParserCtxtPtr ctxt, xmlChar *src, int *len)
{
    int i;
    int remove_head = 0;
    int need_realloc = 0;
    const xmlChar *cur;

    if ((ctxt == NULL) || (src == NULL) || (len == NULL))
        return(NULL);
    i = *len;
    if (i <= 0)
        return(NULL);

    cur = src;
    while (*cur == 0x20) {
        cur++;
	remove_head++;
    }
    while (*cur != 0) {
	if (*cur == 0x20) {
	    cur++;
	    if ((*cur == 0x20) || (*cur == 0)) {
	        need_realloc = 1;
		break;
	    }
	} else
	    cur++;
    }
    if (need_realloc) {
        xmlChar *ret;

	ret = FUNC4(src + remove_head, i - remove_head + 1);
	if (ret == NULL) {
	    FUNC3(ctxt, NULL);
	    return(NULL);
	}
	FUNC2(ret, ret);
	*len = (int) FUNC1((const char *)ret);
        return(ret);
    } else if (remove_head) {
        *len -= remove_head;
        FUNC0(src, src + remove_head, 1 + *len);
	return(src);
    }
    return(NULL);
}