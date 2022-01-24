#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
typedef  TYPE_4__* xmlParserCtxtPtr ;
typedef  scalar_t__ xmlCharEncoding ;
typedef  char xmlChar ;
struct TYPE_21__ {scalar_t__ instate; scalar_t__ errNo; int inSubset; int options; scalar_t__ valid; scalar_t__ wellFormed; TYPE_12__* myDoc; scalar_t__ nsWellFormed; int /*<<< orphan*/  userData; TYPE_3__* sax; int /*<<< orphan*/  extSubURI; int /*<<< orphan*/  extSubSystem; int /*<<< orphan*/  intSubName; int /*<<< orphan*/  disableSAX; TYPE_2__* input; int /*<<< orphan*/  version; int /*<<< orphan*/  standalone; int /*<<< orphan*/ * encoding; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* endDocument ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* externalSubset ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* startDocument ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setDocumentLocator ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_19__ {int end; int cur; TYPE_1__* buf; int /*<<< orphan*/  standalone; } ;
struct TYPE_18__ {scalar_t__ compressed; } ;
struct TYPE_17__ {scalar_t__ compression; int /*<<< orphan*/  properties; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char,char,char,char,char,char,char,char,char) ; 
 scalar_t__ CUR ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  GROW ; 
 scalar_t__ FUNC2 (char) ; 
 char FUNC3 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  SAX_COMPAT_MODE ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 scalar_t__ XML_CHAR_ENCODING_NONE ; 
 int /*<<< orphan*/  XML_DEFAULT_VERSION ; 
 int /*<<< orphan*/  XML_DOC_DTDVALID ; 
 int /*<<< orphan*/  XML_DOC_NSVALID ; 
 int /*<<< orphan*/  XML_DOC_OLD10 ; 
 int /*<<< orphan*/  XML_DOC_WELLFORMED ; 
 int /*<<< orphan*/  XML_ERR_DOCUMENT_EMPTY ; 
 int /*<<< orphan*/  XML_ERR_DOCUMENT_END ; 
 scalar_t__ XML_ERR_UNSUPPORTED_ENCODING ; 
 scalar_t__ XML_PARSER_CONTENT ; 
 scalar_t__ XML_PARSER_DTD ; 
 scalar_t__ XML_PARSER_EOF ; 
 scalar_t__ XML_PARSER_EPILOG ; 
 scalar_t__ XML_PARSER_PROLOG ; 
 int XML_PARSE_OLD10 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  xmlDefaultSAXLocator ; 
 scalar_t__ FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,scalar_t__) ; 

int
FUNC23(xmlParserCtxtPtr ctxt) {
    xmlChar start[4];
    xmlCharEncoding enc;

    FUNC15();

    if ((ctxt == NULL) || (ctxt->input == NULL))
        return(-1);

    GROW;

    /*
     * SAX: detecting the level.
     */
    FUNC11(ctxt);

    /*
     * SAX: beginning of the document processing.
     */
    if ((ctxt->sax) && (ctxt->sax->setDocumentLocator))
        ctxt->sax->setDocumentLocator(ctxt->userData, &xmlDefaultSAXLocator);
    if (ctxt->instate == XML_PARSER_EOF)
	return(-1);

    if ((ctxt->encoding == NULL) &&
        ((ctxt->input->end - ctxt->input->cur) >= 4)) {
	/*
	 * Get the 4 first bytes and decode the charset
	 * if enc != XML_CHAR_ENCODING_NONE
	 * plug some encoding conversion routines.
	 */
	start[0] = RAW;
	start[1] = FUNC3(1);
	start[2] = FUNC3(2);
	start[3] = FUNC3(3);
	enc = FUNC10(&start[0], 4);
	if (enc != XML_CHAR_ENCODING_NONE) {
	    FUNC22(ctxt, enc);
	}
    }


    if (CUR == 0) {
	FUNC12(ctxt, XML_ERR_DOCUMENT_EMPTY, NULL);
	return(-1);
    }

    /*
     * Check for the XMLDecl in the Prolog.
     * do not GROW here to avoid the detected encoder to decode more
     * than just the first line, unless the amount of data is really
     * too small to hold "<?xml version="1.0" encoding="foo"
     */
    if ((ctxt->input->end - ctxt->input->cur) < 35) {
       GROW;
    }
    if ((FUNC0(CUR_PTR, '<', '?', 'x', 'm', 'l')) && (FUNC2(FUNC3(5)))) {

	/*
	 * Note that we will switch encoding on the fly.
	 */
	FUNC20(ctxt);
	if ((ctxt->errNo == XML_ERR_UNSUPPORTED_ENCODING) ||
	    (ctxt->instate == XML_PARSER_EOF)) {
	    /*
	     * The XML REC instructs us to stop parsing right here
	     */
	    return(-1);
	}
	ctxt->standalone = ctxt->input->standalone;
	SKIP_BLANKS;
    } else {
	ctxt->version = FUNC8(XML_DEFAULT_VERSION);
    }
    if ((ctxt->sax) && (ctxt->sax->startDocument) && (!ctxt->disableSAX))
        ctxt->sax->startDocument(ctxt->userData);
    if (ctxt->instate == XML_PARSER_EOF)
	return(-1);
    if ((ctxt->myDoc != NULL) && (ctxt->input != NULL) &&
        (ctxt->input->buf != NULL) && (ctxt->input->buf->compressed >= 0)) {
	ctxt->myDoc->compression = ctxt->input->buf->compressed;
    }

    /*
     * The Misc part of the Prolog
     */
    GROW;
    FUNC19(ctxt);

    /*
     * Then possibly doc type declaration(s) and more Misc
     * (doctypedecl Misc*)?
     */
    GROW;
    if (FUNC1(CUR_PTR, '<', '!', 'D', 'O', 'C', 'T', 'Y', 'P', 'E')) {

	ctxt->inSubset = 1;
	FUNC16(ctxt);
	if (RAW == '[') {
	    ctxt->instate = XML_PARSER_DTD;
	    FUNC18(ctxt);
	    if (ctxt->instate == XML_PARSER_EOF)
		return(-1);
	}

	/*
	 * Create and update the external subset.
	 */
	ctxt->inSubset = 2;
	if ((ctxt->sax != NULL) && (ctxt->sax->externalSubset != NULL) &&
	    (!ctxt->disableSAX))
	    ctxt->sax->externalSubset(ctxt->userData, ctxt->intSubName,
	                              ctxt->extSubSystem, ctxt->extSubURI);
	if (ctxt->instate == XML_PARSER_EOF)
	    return(-1);
	ctxt->inSubset = 0;

        FUNC9(ctxt);

	ctxt->instate = XML_PARSER_PROLOG;
	FUNC19(ctxt);
    }

    /*
     * Time to start parsing the tree itself
     */
    GROW;
    if (RAW != '<') {
	FUNC13(ctxt, XML_ERR_DOCUMENT_EMPTY,
		       "Start tag expected, '<' not found\n");
    } else {
	ctxt->instate = XML_PARSER_CONTENT;
	FUNC17(ctxt);
	ctxt->instate = XML_PARSER_EPILOG;


	/*
	 * The Misc part at the end
	 */
	FUNC19(ctxt);

	if (RAW != 0) {
	    FUNC12(ctxt, XML_ERR_DOCUMENT_END, NULL);
	}
	ctxt->instate = XML_PARSER_EOF;
    }

    /*
     * SAX: end of the document processing.
     */
    if ((ctxt->sax) && (ctxt->sax->endDocument != NULL))
        ctxt->sax->endDocument(ctxt->userData);

    /*
     * Remove locally kept entity definitions if the tree was not built
     */
    if ((ctxt->myDoc != NULL) &&
	(FUNC21(ctxt->myDoc->version, SAX_COMPAT_MODE))) {
	FUNC14(ctxt->myDoc);
	ctxt->myDoc = NULL;
    }

    if ((ctxt->wellFormed) && (ctxt->myDoc != NULL)) {
        ctxt->myDoc->properties |= XML_DOC_WELLFORMED;
	if (ctxt->valid)
	    ctxt->myDoc->properties |= XML_DOC_DTDVALID;
	if (ctxt->nsWellFormed)
	    ctxt->myDoc->properties |= XML_DOC_NSVALID;
	if (ctxt->options & XML_PARSE_OLD10)
	    ctxt->myDoc->properties |= XML_DOC_OLD10;
    }
    if (! ctxt->wellFormed) {
	ctxt->valid = 0;
	return(-1);
    }
    return(0);
}