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
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  NEXT ; 
 char RAW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_ERR_EQUAL_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_STRING_NOT_CLOSED ; 
 int /*<<< orphan*/  XML_ERR_STRING_NOT_STARTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

xmlChar *
FUNC4(xmlParserCtxtPtr ctxt) {
    xmlChar *version = NULL;

    if (FUNC0(CUR_PTR, 'v', 'e', 'r', 's', 'i', 'o', 'n')) {
	FUNC1(7);
	SKIP_BLANKS;
	if (RAW != '=') {
	    FUNC2(ctxt, XML_ERR_EQUAL_REQUIRED, NULL);
	    return(NULL);
        }
	NEXT;
	SKIP_BLANKS;
	if (RAW == '"') {
	    NEXT;
	    version = FUNC3(ctxt);
	    if (RAW != '"') {
		FUNC2(ctxt, XML_ERR_STRING_NOT_CLOSED, NULL);
	    } else
	        NEXT;
	} else if (RAW == '\''){
	    NEXT;
	    version = FUNC3(ctxt);
	    if (RAW != '\'') {
		FUNC2(ctxt, XML_ERR_STRING_NOT_CLOSED, NULL);
	    } else
	        NEXT;
	} else {
	    FUNC2(ctxt, XML_ERR_STRING_NOT_STARTED, NULL);
	}
    }
    return(version);
}