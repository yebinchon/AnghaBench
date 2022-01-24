#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int begin_line; int end_line; int /*<<< orphan*/ * node; void* end_pos; void* begin_pos; } ;
typedef  TYPE_3__ xmlParserNodeInfo ;
typedef  TYPE_4__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_27__ {scalar_t__ children; } ;
struct TYPE_26__ {int nsNr; int options; scalar_t__ spaceNr; int* space; scalar_t__ instate; scalar_t__ node; TYPE_2__* input; scalar_t__ record_info; scalar_t__ sax2; int /*<<< orphan*/  userData; TYPE_1__* sax; int /*<<< orphan*/  disableSAX; TYPE_5__* myDoc; int /*<<< orphan*/  vctxt; int /*<<< orphan*/  valid; scalar_t__ wellFormed; scalar_t__ validate; scalar_t__ nameNr; } ;
struct TYPE_24__ {void* consumed; void* base; int line; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* endElement ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ;int /*<<< orphan*/  (* endElementNs ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 void* CUR_PTR ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  NEXT1 ; 
 char FUNC1 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  XML_ERR_GT_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  XML_ERR_TAG_NOT_FINISHED ; 
 scalar_t__ XML_PARSER_EOF ; 
 int XML_PARSE_HUGE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_4__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,TYPE_3__*) ; 
 unsigned int xmlParserMaxDepth ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_5__*) ; 

void
FUNC21(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    const xmlChar *prefix = NULL;
    const xmlChar *URI = NULL;
    xmlParserNodeInfo node_info;
    int line, tlen = 0;
    xmlNodePtr ret;
    int nsNr = ctxt->nsNr;

    if (((unsigned int) ctxt->nameNr > xmlParserMaxDepth) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
	FUNC11(ctxt, XML_ERR_INTERNAL_ERROR,
		 "Excessive depth in document: %d use XML_PARSE_HUGE option\n",
			  xmlParserMaxDepth);
	FUNC13(ctxt);
	return;
    }

    /* Capture start position */
    if (ctxt->record_info) {
        node_info.begin_pos = ctxt->input->consumed +
                          (CUR_PTR - ctxt->input->base);
	node_info.begin_line = ctxt->input->line;
    }

    if (ctxt->spaceNr == 0)
	FUNC8(ctxt, -1);
    else if (*ctxt->space == -2)
	FUNC8(ctxt, -1);
    else
	FUNC8(ctxt, *ctxt->space);

    line = ctxt->input->line;
#ifdef LIBXML_SAX1_ENABLED
    if (ctxt->sax2)
#endif /* LIBXML_SAX1_ENABLED */
        name = FUNC18(ctxt, &prefix, &URI, &tlen);
#ifdef LIBXML_SAX1_ENABLED
    else
	name = xmlParseStartTag(ctxt);
#endif /* LIBXML_SAX1_ENABLED */
    if (ctxt->instate == XML_PARSER_EOF)
	return;
    if (name == NULL) {
	FUNC7(ctxt);
        return;
    }
    FUNC4(ctxt, name);
    ret = ctxt->node;

#ifdef LIBXML_VALID_ENABLED
    /*
     * [ VC: Root Element Type ]
     * The Name in the document type declaration must match the element
     * type of the root element.
     */
    if (ctxt->validate && ctxt->wellFormed && ctxt->myDoc &&
        ctxt->node && (ctxt->node == ctxt->myDoc->children))
        ctxt->valid &= xmlValidateRoot(&ctxt->vctxt, ctxt->myDoc);
#endif /* LIBXML_VALID_ENABLED */

    /*
     * Check for an Empty Element.
     */
    if ((RAW == '/') && (FUNC1(1) == '>')) {
        FUNC2(2);
	if (ctxt->sax2) {
	    if ((ctxt->sax != NULL) && (ctxt->sax->endElementNs != NULL) &&
		(!ctxt->disableSAX))
		ctxt->sax->endElementNs(ctxt->userData, name, prefix, URI);
#ifdef LIBXML_SAX1_ENABLED
	} else {
	    if ((ctxt->sax != NULL) && (ctxt->sax->endElement != NULL) &&
		(!ctxt->disableSAX))
		ctxt->sax->endElement(ctxt->userData, name);
#endif /* LIBXML_SAX1_ENABLED */
	}
	FUNC3(ctxt);
	FUNC7(ctxt);
	if (nsNr != ctxt->nsNr)
	    FUNC6(ctxt, ctxt->nsNr - nsNr);
	if ( ret != NULL && ctxt->record_info ) {
	   node_info.end_pos = ctxt->input->consumed +
			      (CUR_PTR - ctxt->input->base);
	   node_info.end_line = ctxt->input->line;
	   node_info.node = ret;
	   FUNC19(ctxt, &node_info);
	}
	return;
    }
    if (RAW == '>') {
        NEXT1;
    } else {
        FUNC12(ctxt, XML_ERR_GT_REQUIRED,
		     "Couldn't find end of Start Tag %s line %d\n",
		                name, line, NULL);

	/*
	 * end of parsing of this node.
	 */
	FUNC5(ctxt);
	FUNC3(ctxt);
	FUNC7(ctxt);
	if (nsNr != ctxt->nsNr)
	    FUNC6(ctxt, ctxt->nsNr - nsNr);

	/*
	 * Capture end position and add node
	 */
	if ( ret != NULL && ctxt->record_info ) {
	   node_info.end_pos = ctxt->input->consumed +
			      (CUR_PTR - ctxt->input->base);
	   node_info.end_line = ctxt->input->line;
	   node_info.node = ret;
	   FUNC19(ctxt, &node_info);
	}
	return;
    }

    /*
     * Parse the content of the element:
     */
    FUNC14(ctxt);
    if (ctxt->instate == XML_PARSER_EOF)
	return;
    if (!FUNC0(RAW)) {
        FUNC12(ctxt, XML_ERR_TAG_NOT_FINISHED,
	 "Premature end of data in tag %s line %d\n",
		                name, line, NULL);

	/*
	 * end of parsing of this node.
	 */
	FUNC5(ctxt);
	FUNC3(ctxt);
	FUNC7(ctxt);
	if (nsNr != ctxt->nsNr)
	    FUNC6(ctxt, ctxt->nsNr - nsNr);
	return;
    }

    /*
     * parse the end of tag: '</' should be here.
     */
    if (ctxt->sax2) {
	FUNC16(ctxt, prefix, URI, line, ctxt->nsNr - nsNr, tlen);
	FUNC3(ctxt);
    }
#ifdef LIBXML_SAX1_ENABLED
      else
	xmlParseEndTag1(ctxt, line);
#endif /* LIBXML_SAX1_ENABLED */

    /*
     * Capture end position and add node
     */
    if ( ret != NULL && ctxt->record_info ) {
       node_info.end_pos = ctxt->input->consumed +
                          (CUR_PTR - ctxt->input->base);
       node_info.end_line = ctxt->input->line;
       node_info.node = ret;
       FUNC19(ctxt, &node_info);
    }
}