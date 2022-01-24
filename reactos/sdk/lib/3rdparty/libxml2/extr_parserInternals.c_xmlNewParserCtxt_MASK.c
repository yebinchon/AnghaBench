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
typedef  int /*<<< orphan*/  xmlParserCtxt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

xmlParserCtxtPtr
FUNC5(void)
{
    xmlParserCtxtPtr ctxt;

    ctxt = (xmlParserCtxtPtr) FUNC4(sizeof(xmlParserCtxt));
    if (ctxt == NULL) {
	FUNC1(NULL, "cannot allocate parser context\n");
	return(NULL);
    }
    FUNC0(ctxt, 0, sizeof(xmlParserCtxt));
    if (FUNC3(ctxt) < 0) {
        FUNC2(ctxt);
	return(NULL);
    }
    return(ctxt);
}