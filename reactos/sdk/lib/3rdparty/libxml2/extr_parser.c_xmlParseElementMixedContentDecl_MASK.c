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
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  TYPE_3__* xmlElementContentPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_12__ {void* ocur; struct TYPE_12__* parent; struct TYPE_12__* c2; struct TYPE_12__* c1; } ;
struct TYPE_11__ {scalar_t__ instate; int /*<<< orphan*/  myDoc; TYPE_1__* input; } ;
struct TYPE_10__ {int id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  GROW ; 
 int /*<<< orphan*/  NEXT ; 
 char FUNC1 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_ELEMENT_CONTENT_ELEMENT ; 
 void* XML_ELEMENT_CONTENT_MULT ; 
 int /*<<< orphan*/  XML_ELEMENT_CONTENT_OR ; 
 int /*<<< orphan*/  XML_ELEMENT_CONTENT_PCDATA ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_BOUNDARY ; 
 int /*<<< orphan*/  XML_ERR_MIXED_NOT_STARTED ; 
 int /*<<< orphan*/  XML_ERR_NAME_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_PCDATA_REQUIRED ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*) ; 

xmlElementContentPtr
FUNC8(xmlParserCtxtPtr ctxt, int inputchk) {
    xmlElementContentPtr ret = NULL, cur = NULL, n;
    const xmlChar *elem = NULL;

    GROW;
    if (FUNC0(CUR_PTR, '#', 'P', 'C', 'D', 'A', 'T', 'A')) {
	FUNC2(7);
	SKIP_BLANKS;
	SHRINK;
	if (RAW == ')') {
	    if (ctxt->input->id != inputchk) {
		FUNC4(ctxt, XML_ERR_ENTITY_BOUNDARY,
                               "Element content declaration doesn't start and"
                               " stop in the same entity\n");
	    }
	    NEXT;
	    ret = FUNC6(ctxt->myDoc, NULL, XML_ELEMENT_CONTENT_PCDATA);
	    if (ret == NULL)
	        return(NULL);
	    if (RAW == '*') {
		ret->ocur = XML_ELEMENT_CONTENT_MULT;
		NEXT;
	    }
	    return(ret);
	}
	if ((RAW == '(') || (RAW == '|')) {
	    ret = cur = FUNC6(ctxt->myDoc, NULL, XML_ELEMENT_CONTENT_PCDATA);
	    if (ret == NULL) return(NULL);
	}
	while ((RAW == '|') && (ctxt->instate != XML_PARSER_EOF)) {
	    NEXT;
	    if (elem == NULL) {
	        ret = FUNC6(ctxt->myDoc, NULL, XML_ELEMENT_CONTENT_OR);
		if (ret == NULL) return(NULL);
		ret->c1 = cur;
		if (cur != NULL)
		    cur->parent = ret;
		cur = ret;
	    } else {
	        n = FUNC6(ctxt->myDoc, NULL, XML_ELEMENT_CONTENT_OR);
		if (n == NULL) return(NULL);
		n->c1 = FUNC6(ctxt->myDoc, elem, XML_ELEMENT_CONTENT_ELEMENT);
		if (n->c1 != NULL)
		    n->c1->parent = n;
	        cur->c2 = n;
		if (n != NULL)
		    n->parent = cur;
		cur = n;
	    }
	    SKIP_BLANKS;
	    elem = FUNC7(ctxt);
	    if (elem == NULL) {
		FUNC4(ctxt, XML_ERR_NAME_REQUIRED,
			"xmlParseElementMixedContentDecl : Name expected\n");
		FUNC5(ctxt->myDoc, ret);
		return(NULL);
	    }
	    SKIP_BLANKS;
	    GROW;
	}
	if ((RAW == ')') && (FUNC1(1) == '*')) {
	    if (elem != NULL) {
		cur->c2 = FUNC6(ctxt->myDoc, elem,
		                               XML_ELEMENT_CONTENT_ELEMENT);
		if (cur->c2 != NULL)
		    cur->c2->parent = cur;
            }
            if (ret != NULL)
                ret->ocur = XML_ELEMENT_CONTENT_MULT;
	    if (ctxt->input->id != inputchk) {
		FUNC4(ctxt, XML_ERR_ENTITY_BOUNDARY,
                               "Element content declaration doesn't start and"
                               " stop in the same entity\n");
	    }
	    FUNC2(2);
	} else {
	    FUNC5(ctxt->myDoc, ret);
	    FUNC3(ctxt, XML_ERR_MIXED_NOT_STARTED, NULL);
	    return(NULL);
	}

    } else {
	FUNC3(ctxt, XML_ERR_PCDATA_REQUIRED, NULL);
    }
    return(ret);
}