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
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

xmlParserCtxtPtr
FUNC2(const xmlChar *cur) {
    int len;

    if (cur == NULL)
	return(NULL);
    len = FUNC1(cur);
    return(FUNC0((const char *)cur, len));
}