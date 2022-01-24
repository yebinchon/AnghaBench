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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  NEXT ; 
 char FUNC1 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_ERR_EQUAL_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_STANDALONE_VALUE ; 
 int /*<<< orphan*/  XML_ERR_STRING_NOT_CLOSED ; 
 int /*<<< orphan*/  XML_ERR_STRING_NOT_STARTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC4(xmlParserCtxtPtr ctxt) {
    int standalone = -2;

    SKIP_BLANKS;
    if (FUNC0(CUR_PTR, 's', 't', 'a', 'n', 'd', 'a', 'l', 'o', 'n', 'e')) {
	FUNC2(10);
        SKIP_BLANKS;
	if (RAW != '=') {
	    FUNC3(ctxt, XML_ERR_EQUAL_REQUIRED, NULL);
	    return(standalone);
        }
	NEXT;
	SKIP_BLANKS;
        if (RAW == '\''){
	    NEXT;
	    if ((RAW == 'n') && (FUNC1(1) == 'o')) {
	        standalone = 0;
                FUNC2(2);
	    } else if ((RAW == 'y') && (FUNC1(1) == 'e') &&
	               (FUNC1(2) == 's')) {
	        standalone = 1;
		FUNC2(3);
            } else {
		FUNC3(ctxt, XML_ERR_STANDALONE_VALUE, NULL);
	    }
	    if (RAW != '\'') {
		FUNC3(ctxt, XML_ERR_STRING_NOT_CLOSED, NULL);
	    } else
	        NEXT;
	} else if (RAW == '"'){
	    NEXT;
	    if ((RAW == 'n') && (FUNC1(1) == 'o')) {
	        standalone = 0;
		FUNC2(2);
	    } else if ((RAW == 'y') && (FUNC1(1) == 'e') &&
	               (FUNC1(2) == 's')) {
	        standalone = 1;
                FUNC2(3);
            } else {
		FUNC3(ctxt, XML_ERR_STANDALONE_VALUE, NULL);
	    }
	    if (RAW != '"') {
		FUNC3(ctxt, XML_ERR_STRING_NOT_CLOSED, NULL);
	    } else
	        NEXT;
	} else {
	    FUNC3(ctxt, XML_ERR_STRING_NOT_STARTED, NULL);
        }
    }
    return(standalone);
}