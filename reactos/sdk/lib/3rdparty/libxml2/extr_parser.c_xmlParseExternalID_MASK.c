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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,unsigned char,char,char,char,char) ; 
 char CUR ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_ERR_PUBID_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_SPACE_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_URI_REQUIRED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

xmlChar *
FUNC6(xmlParserCtxtPtr ctxt, xmlChar **publicID, int strict) {
    xmlChar *URI = NULL;

    SHRINK;

    *publicID = NULL;
    if (FUNC0(CUR_PTR, 'S', 'Y', 'S', 'T', 'E', 'M')) {
        FUNC1(6);
	if (SKIP_BLANKS == 0) {
	    FUNC3(ctxt, XML_ERR_SPACE_REQUIRED,
	                   "Space required after 'SYSTEM'\n");
	}
	URI = FUNC5(ctxt);
	if (URI == NULL) {
	    FUNC2(ctxt, XML_ERR_URI_REQUIRED, NULL);
        }
    } else if (FUNC0(CUR_PTR, 'P', 'U', 'B', 'L', 'I', 'C')) {
        FUNC1(6);
	if (SKIP_BLANKS == 0) {
	    FUNC3(ctxt, XML_ERR_SPACE_REQUIRED,
		    "Space required after 'PUBLIC'\n");
	}
	*publicID = FUNC4(ctxt);
	if (*publicID == NULL) {
	    FUNC2(ctxt, XML_ERR_PUBID_REQUIRED, NULL);
	}
	if (strict) {
	    /*
	     * We don't handle [83] so "S SystemLiteral" is required.
	     */
	    if (SKIP_BLANKS == 0) {
		FUNC3(ctxt, XML_ERR_SPACE_REQUIRED,
			"Space required after the Public Identifier\n");
	    }
	} else {
	    /*
	     * We handle [83] so we return immediately, if
	     * "S SystemLiteral" is not detected. We skip blanks if no
             * system literal was found, but this is harmless since we must
             * be at the end of a NotationDecl.
	     */
	    if (SKIP_BLANKS == 0) return(NULL);
	    if ((CUR != '\'') && (CUR != '"')) return(NULL);
	}
	URI = FUNC5(ctxt);
	if (URI == NULL) {
	    FUNC2(ctxt, XML_ERR_URI_REQUIRED, NULL);
        }
    }
    return(URI);
}