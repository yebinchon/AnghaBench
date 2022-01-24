#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlParserCtxtPtr ;
typedef  scalar_t__ xmlCharEncoding ;
typedef  char xmlChar ;
struct TYPE_12__ {scalar_t__ errNo; scalar_t__ instate; int /*<<< orphan*/  wellFormed; int /*<<< orphan*/  userData; TYPE_2__* sax; scalar_t__ depth; scalar_t__ loadsubset; scalar_t__ validate; int /*<<< orphan*/  disableSAX; int /*<<< orphan*/  version; TYPE_1__* input; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* endDocument ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* startDocument ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setDocumentLocator ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {int end; int cur; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char) ; 
 scalar_t__ CUR ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  GROW ; 
 scalar_t__ FUNC1 (char) ; 
 char FUNC2 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 scalar_t__ XML_CHAR_ENCODING_NONE ; 
 int /*<<< orphan*/  XML_DEFAULT_VERSION ; 
 int /*<<< orphan*/  XML_ERR_DOCUMENT_EMPTY ; 
 int /*<<< orphan*/  XML_ERR_EXTRA_CONTENT ; 
 int /*<<< orphan*/  XML_ERR_NOT_WELL_BALANCED ; 
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ; 
 scalar_t__ XML_PARSER_CONTENT ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  xmlDefaultSAXLocator ; 
 scalar_t__ FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,scalar_t__) ; 

int
FUNC14(xmlParserCtxtPtr ctxt) {
    xmlChar start[4];
    xmlCharEncoding enc;

    if ((ctxt == NULL) || (ctxt->input == NULL))
        return(-1);

    FUNC7();

    FUNC9(ctxt);

    GROW;

    /*
     * SAX: beginning of the document processing.
     */
    if ((ctxt->sax) && (ctxt->sax->setDocumentLocator))
        ctxt->sax->setDocumentLocator(ctxt->userData, &xmlDefaultSAXLocator);

    /*
     * Get the 4 first bytes and decode the charset
     * if enc != XML_CHAR_ENCODING_NONE
     * plug some encoding conversion routines.
     */
    if ((ctxt->input->end - ctxt->input->cur) >= 4) {
	start[0] = RAW;
	start[1] = FUNC2(1);
	start[2] = FUNC2(2);
	start[3] = FUNC2(3);
	enc = FUNC8(start, 4);
	if (enc != XML_CHAR_ENCODING_NONE) {
	    FUNC13(ctxt, enc);
	}
    }


    if (CUR == 0) {
	FUNC10(ctxt, XML_ERR_DOCUMENT_EMPTY, NULL);
    }

    /*
     * Check for the XMLDecl in the Prolog.
     */
    GROW;
    if ((FUNC0(CUR_PTR, '<', '?', 'x', 'm', 'l')) && (FUNC1(FUNC2(5)))) {

	/*
	 * Note that we will switch encoding on the fly.
	 */
	FUNC12(ctxt);
	if (ctxt->errNo == XML_ERR_UNSUPPORTED_ENCODING) {
	    /*
	     * The XML REC instructs us to stop parsing right here
	     */
	    return(-1);
	}
	SKIP_BLANKS;
    } else {
	ctxt->version = FUNC6(XML_DEFAULT_VERSION);
    }
    if ((ctxt->sax) && (ctxt->sax->startDocument) && (!ctxt->disableSAX))
        ctxt->sax->startDocument(ctxt->userData);
    if (ctxt->instate == XML_PARSER_EOF)
	return(-1);

    /*
     * Doing validity checking on chunk doesn't make sense
     */
    ctxt->instate = XML_PARSER_CONTENT;
    ctxt->validate = 0;
    ctxt->loadsubset = 0;
    ctxt->depth = 0;

    FUNC11(ctxt);
    if (ctxt->instate == XML_PARSER_EOF)
	return(-1);

    if ((RAW == '<') && (FUNC2(1) == '/')) {
	FUNC10(ctxt, XML_ERR_NOT_WELL_BALANCED, NULL);
    } else if (RAW != 0) {
	FUNC10(ctxt, XML_ERR_EXTRA_CONTENT, NULL);
    }

    /*
     * SAX: end of the document processing.
     */
    if ((ctxt->sax) && (ctxt->sax->endDocument != NULL))
        ctxt->sax->endDocument(ctxt->userData);

    if (! ctxt->wellFormed) return(-1);
    return(0);
}