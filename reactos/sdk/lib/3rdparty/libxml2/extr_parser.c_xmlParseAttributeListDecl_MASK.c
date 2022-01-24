#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/ * xmlEnumerationPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_13__ {scalar_t__ instate; TYPE_2__* input; scalar_t__ sax2; int /*<<< orphan*/  userData; TYPE_1__* sax; int /*<<< orphan*/  disableSAX; } ;
struct TYPE_12__ {int id; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* attributeDecl ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  GROW ; 
 int /*<<< orphan*/  NEXT ; 
 char RAW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SKIP_BLANKS ; 
 int XML_ATTRIBUTE_CDATA ; 
 int XML_ATTRIBUTE_IMPLIED ; 
 int XML_ATTRIBUTE_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_BOUNDARY ; 
 int /*<<< orphan*/  XML_ERR_NAME_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_SPACE_REQUIRED ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*) ; 

void
FUNC12(xmlParserCtxtPtr ctxt) {
    const xmlChar *elemName;
    const xmlChar *attrName;
    xmlEnumerationPtr tree;

    if (FUNC0(CUR_PTR, '<', '!', 'A', 'T', 'T', 'L', 'I', 'S', 'T')) {
	int inputid = ctxt->input->id;

	FUNC1(9);
	if (SKIP_BLANKS == 0) {
	    FUNC6(ctxt, XML_ERR_SPACE_REQUIRED,
		                 "Space required after '<!ATTLIST'\n");
	}
        elemName = FUNC11(ctxt);
	if (elemName == NULL) {
	    FUNC6(ctxt, XML_ERR_NAME_REQUIRED,
			   "ATTLIST: no name for Element\n");
	    return;
	}
	SKIP_BLANKS;
	GROW;
	while ((RAW != '>') && (ctxt->instate != XML_PARSER_EOF)) {
	    int type;
	    int def;
	    xmlChar *defaultValue = NULL;

	    GROW;
            tree = NULL;
	    attrName = FUNC11(ctxt);
	    if (attrName == NULL) {
		FUNC6(ctxt, XML_ERR_NAME_REQUIRED,
			       "ATTLIST: no name for Attribute\n");
		break;
	    }
	    GROW;
	    if (SKIP_BLANKS == 0) {
		FUNC6(ctxt, XML_ERR_SPACE_REQUIRED,
		        "Space required after the attribute name\n");
		break;
	    }

	    type = FUNC9(ctxt, &tree);
	    if (type <= 0) {
	        break;
	    }

	    GROW;
	    if (SKIP_BLANKS == 0) {
		FUNC6(ctxt, XML_ERR_SPACE_REQUIRED,
			       "Space required after the attribute type\n");
	        if (tree != NULL)
		    FUNC8(tree);
		break;
	    }

	    def = FUNC10(ctxt, &defaultValue);
	    if (def <= 0) {
                if (defaultValue != NULL)
		    FUNC7(defaultValue);
	        if (tree != NULL)
		    FUNC8(tree);
	        break;
	    }
	    if ((type != XML_ATTRIBUTE_CDATA) && (defaultValue != NULL))
	        FUNC5(defaultValue, defaultValue);

	    GROW;
            if (RAW != '>') {
		if (SKIP_BLANKS == 0) {
		    FUNC6(ctxt, XML_ERR_SPACE_REQUIRED,
			"Space required after the attribute default value\n");
		    if (defaultValue != NULL)
			FUNC7(defaultValue);
		    if (tree != NULL)
			FUNC8(tree);
		    break;
		}
	    }
	    if ((ctxt->sax != NULL) && (!ctxt->disableSAX) &&
		(ctxt->sax->attributeDecl != NULL))
		ctxt->sax->attributeDecl(ctxt->userData, elemName, attrName,
	                        type, def, defaultValue, tree);
	    else if (tree != NULL)
		FUNC8(tree);

	    if ((ctxt->sax2) && (defaultValue != NULL) &&
	        (def != XML_ATTRIBUTE_IMPLIED) &&
		(def != XML_ATTRIBUTE_REQUIRED)) {
		FUNC3(ctxt, elemName, attrName, defaultValue);
	    }
	    if (ctxt->sax2) {
		FUNC4(ctxt, elemName, attrName, type);
	    }
	    if (defaultValue != NULL)
	        FUNC7(defaultValue);
	    GROW;
	}
	if (RAW == '>') {
	    if (inputid != ctxt->input->id) {
		FUNC6(ctxt, XML_ERR_ENTITY_BOUNDARY,
                               "Attribute list declaration doesn't start and"
                               " stop in the same entity\n");
	    }
	    NEXT;
	}
    }
}