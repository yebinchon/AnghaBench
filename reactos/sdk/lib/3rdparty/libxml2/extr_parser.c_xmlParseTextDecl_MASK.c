#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_9__ {scalar_t__ errNo; TYPE_1__* input; } ;
struct TYPE_8__ {int /*<<< orphan*/ * version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NEXT ; 
 char FUNC3 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_DEFAULT_VERSION ; 
 int /*<<< orphan*/  XML_ERR_MISSING_ENCODING ; 
 scalar_t__ XML_ERR_OK ; 
 int /*<<< orphan*/  XML_ERR_SPACE_REQUIRED ; 
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ; 
 int /*<<< orphan*/  XML_ERR_XMLDECL_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_XMLDECL_NOT_STARTED ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*) ; 

void
FUNC10(xmlParserCtxtPtr ctxt) {
    xmlChar *version;
    const xmlChar *encoding;

    /*
     * We know that '<?xml' is here.
     */
    if ((FUNC0(CUR_PTR, '<', '?', 'x', 'm', 'l')) && (FUNC1(FUNC3(5)))) {
	FUNC4(5);
    } else {
	FUNC6(ctxt, XML_ERR_XMLDECL_NOT_STARTED, NULL);
	return;
    }

    if (SKIP_BLANKS == 0) {
	FUNC7(ctxt, XML_ERR_SPACE_REQUIRED,
		       "Space needed after '<?xml'\n");
    }

    /*
     * We may have the VersionInfo here.
     */
    version = FUNC9(ctxt);
    if (version == NULL)
	version = FUNC5(XML_DEFAULT_VERSION);
    else {
	if (SKIP_BLANKS == 0) {
	    FUNC7(ctxt, XML_ERR_SPACE_REQUIRED,
		           "Space needed here\n");
	}
    }
    ctxt->input->version = version;

    /*
     * We must have the encoding declaration
     */
    encoding = FUNC8(ctxt);
    if (ctxt->errNo == XML_ERR_UNSUPPORTED_ENCODING) {
	/*
	 * The XML REC instructs us to stop parsing right here
	 */
        return;
    }
    if ((encoding == NULL) && (ctxt->errNo == XML_ERR_OK)) {
	FUNC7(ctxt, XML_ERR_MISSING_ENCODING,
		       "Missing encoding in text declaration\n");
    }

    SKIP_BLANKS;
    if ((RAW == '?') && (FUNC3(1) == '>')) {
        FUNC4(2);
    } else if (RAW == '>') {
        /* Deprecated old WD ... */
	FUNC6(ctxt, XML_ERR_XMLDECL_NOT_FINISHED, NULL);
	NEXT;
    } else {
	FUNC6(ctxt, XML_ERR_XMLDECL_NOT_FINISHED, NULL);
	FUNC2(CUR_PTR);
	NEXT;
    }
}