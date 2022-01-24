#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_5__ {scalar_t__ instate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char) ; 
 int /*<<< orphan*/  CUR ; 
 int /*<<< orphan*/  CUR_PTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NEXT ; 
 char FUNC2 (int) ; 
 char RAW ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(xmlParserCtxtPtr ctxt) {
    while ((ctxt->instate != XML_PARSER_EOF) &&
           (((RAW == '<') && (FUNC2(1) == '?')) ||
            (FUNC0(CUR_PTR, '<', '!', '-', '-')) ||
            FUNC1(CUR))) {
        if ((RAW == '<') && (FUNC2(1) == '?')) {
	    FUNC4(ctxt);
	} else if (FUNC1(CUR)) {
	    NEXT;
	} else
	    FUNC3(ctxt);
    }
}