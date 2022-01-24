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
typedef  TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_10__ {scalar_t__ instate; scalar_t__ external; int inputNr; } ;

/* Variables and functions */
 char CUR ; 
 int /*<<< orphan*/  GROW ; 
 char FUNC0 (int) ; 
 char RAW ; 
 scalar_t__ XML_PARSER_DTD ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(xmlParserCtxtPtr ctxt) {
    GROW;
    if (CUR == '<') {
        if (FUNC0(1) == '!') {
	    switch (FUNC0(2)) {
	        case 'E':
		    if (FUNC0(3) == 'L')
			FUNC4(ctxt);
		    else if (FUNC0(3) == 'N')
			FUNC5(ctxt);
		    break;
	        case 'A':
		    FUNC1(ctxt);
		    break;
	        case 'N':
		    FUNC6(ctxt);
		    break;
	        case '-':
		    FUNC2(ctxt);
		    break;
		default:
		    /* there is an error but it will be detected later */
		    break;
	    }
	} else if (FUNC0(1) == '?') {
	    FUNC7(ctxt);
	}
    }

    /*
     * detect requirement to exit there and act accordingly
     * and avoid having instate overriden later on
     */
    if (ctxt->instate == XML_PARSER_EOF)
        return;

    /*
     * Conditional sections are allowed from entities included
     * by PE References in the internal subset.
     */
    if ((ctxt->external == 0) && (ctxt->inputNr > 1)) {
        if ((RAW == '<') && (FUNC0(1) == '!') && (FUNC0(2) == '[')) {
	    FUNC3(ctxt);
	}
    }

    ctxt->instate = XML_PARSER_DTD;
}