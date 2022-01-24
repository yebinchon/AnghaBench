#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  char xmlChar ;
struct TYPE_13__ {scalar_t__ instate; TYPE_1__* input; } ;
struct TYPE_12__ {unsigned int consumed; char* cur; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char,char,char,char,char,char,char,char,char) ; 
 char const* CUR_PTR ; 
 int /*<<< orphan*/  GROW ; 
 char FUNC1 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  XML_ERR_INTERNAL_ERROR ; 
 scalar_t__ XML_PARSER_CONTENT ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

void
FUNC10(xmlParserCtxtPtr ctxt) {
    GROW;
    while ((RAW != 0) &&
	   ((RAW != '<') || (FUNC1(1) != '/')) &&
	   (ctxt->instate != XML_PARSER_EOF)) {
	const xmlChar *test = CUR_PTR;
	unsigned int cons = ctxt->input->consumed;
	const xmlChar *cur = ctxt->input->cur;

	/*
	 * First case : a Processing Instruction.
	 */
	if ((*cur == '<') && (cur[1] == '?')) {
	    FUNC8(ctxt);
	}

	/*
	 * Second case : a CDSection
	 */
	/* 2.6.0 test was *cur not RAW */
	else if (FUNC0(CUR_PTR, '<', '!', '[', 'C', 'D', 'A', 'T', 'A', '[')) {
	    FUNC4(ctxt);
	}

	/*
	 * Third case :  a comment
	 */
	else if ((*cur == '<') && (FUNC1(1) == '!') &&
		 (FUNC1(2) == '-') && (FUNC1(3) == '-')) {
	    FUNC6(ctxt);
	    ctxt->instate = XML_PARSER_CONTENT;
	}

	/*
	 * Fourth case :  a sub-element.
	 */
	else if (*cur == '<') {
	    FUNC7(ctxt);
	}

	/*
	 * Fifth case : a reference. If if has not been resolved,
	 *    parsing returns it's Name, create the node
	 */

	else if (*cur == '&') {
	    FUNC9(ctxt);
	}

	/*
	 * Last case, text. Note that References are handled directly.
	 */
	else {
	    FUNC5(ctxt, 0);
	}

	GROW;
	SHRINK;

	if ((cons == ctxt->input->consumed) && (test == CUR_PTR)) {
	    FUNC2(ctxt, XML_ERR_INTERNAL_ERROR,
	                "detected an error in element content\n");
	    FUNC3(ctxt);
            break;
	}
    }
}