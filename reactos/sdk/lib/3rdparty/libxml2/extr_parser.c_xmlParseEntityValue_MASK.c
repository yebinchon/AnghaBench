#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xmlParserInputPtr ;
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  int xmlChar ;
struct TYPE_8__ {scalar_t__ instate; scalar_t__ input; int inSubset; int inputNr; int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GROW ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_CHAR_ERROR ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_NOT_STARTED ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_PE_INTERNAL ; 
 int XML_PARSER_BUFFER_SIZE ; 
 scalar_t__ XML_PARSER_ENTITY_VALUE ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  XML_SUBSTITUTE_PEREF ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int) ; 
 int* FUNC9 (TYPE_1__*,int const**) ; 
 scalar_t__ FUNC10 (int*,int) ; 
 int* FUNC11 (TYPE_1__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

xmlChar *
FUNC12(xmlParserCtxtPtr ctxt, xmlChar **orig) {
    xmlChar *buf = NULL;
    int len = 0;
    int size = XML_PARSER_BUFFER_SIZE;
    int c, l;
    xmlChar stop;
    xmlChar *ret = NULL;
    const xmlChar *cur = NULL;
    xmlParserInputPtr input;

    if (RAW == '"') stop = '"';
    else if (RAW == '\'') stop = '\'';
    else {
	FUNC5(ctxt, XML_ERR_ENTITY_NOT_STARTED, NULL);
	return(NULL);
    }
    buf = (xmlChar *) FUNC8(size * sizeof(xmlChar));
    if (buf == NULL) {
	FUNC4(ctxt, NULL);
	return(NULL);
    }

    /*
     * The content of the entity definition is copied in a buffer.
     */

    ctxt->instate = XML_PARSER_ENTITY_VALUE;
    input = ctxt->input;
    GROW;
    if (ctxt->instate == XML_PARSER_EOF)
        goto error;
    NEXT;
    c = FUNC1(l);
    /*
     * NOTE: 4.4.5 Included in Literal
     * When a parameter entity reference appears in a literal entity
     * value, ... a single or double quote character in the replacement
     * text is always treated as a normal data character and will not
     * terminate the literal.
     * In practice it means we stop the loop only when back at parsing
     * the initial entity and the quote is found
     */
    while (((FUNC2(c)) && ((c != stop) || /* checked */
	    (ctxt->input != input))) && (ctxt->instate != XML_PARSER_EOF)) {
	if (len + 5 >= size) {
	    xmlChar *tmp;

	    size *= 2;
	    tmp = (xmlChar *) FUNC10(buf, size * sizeof(xmlChar));
	    if (tmp == NULL) {
		FUNC4(ctxt, NULL);
                goto error;
	    }
	    buf = tmp;
	}
	FUNC0(l,buf,len,c);
	FUNC3(l);

	GROW;
	c = FUNC1(l);
	if (c == 0) {
	    GROW;
	    c = FUNC1(l);
	}
    }
    buf[len] = 0;
    if (ctxt->instate == XML_PARSER_EOF)
        goto error;
    if (c != stop) {
        FUNC5(ctxt, XML_ERR_ENTITY_NOT_FINISHED, NULL);
        goto error;
    }
    NEXT;

    /*
     * Raise problem w.r.t. '&' and '%' being used in non-entities
     * reference constructs. Note Charref will be handled in
     * xmlStringDecodeEntities()
     */
    cur = buf;
    while (*cur != 0) { /* non input consuming */
	if ((*cur == '%') || ((*cur == '&') && (cur[1] != '#'))) {
	    xmlChar *name;
	    xmlChar tmp = *cur;
            int nameOk = 0;

	    cur++;
	    name = FUNC9(ctxt, &cur);
            if (name != NULL) {
                nameOk = 1;
                FUNC7(name);
            }
            if ((nameOk == 0) || (*cur != ';')) {
		FUNC6(ctxt, XML_ERR_ENTITY_CHAR_ERROR,
	    "EntityValue: '%c' forbidden except for entities references\n",
	                          tmp);
                goto error;
	    }
	    if ((tmp == '%') && (ctxt->inSubset == 1) &&
		(ctxt->inputNr == 1)) {
		FUNC5(ctxt, XML_ERR_ENTITY_PE_INTERNAL, NULL);
                goto error;
	    }
	    if (*cur == 0)
	        break;
	}
	cur++;
    }

    /*
     * Then PEReference entities are substituted.
     *
     * NOTE: 4.4.7 Bypassed
     * When a general entity reference appears in the EntityValue in
     * an entity declaration, it is bypassed and left as is.
     * so XML_SUBSTITUTE_REF is not set here.
     */
    ++ctxt->depth;
    ret = FUNC11(ctxt, buf, XML_SUBSTITUTE_PEREF,
                                  0, 0, 0);
    --ctxt->depth;
    if (orig != NULL) {
        *orig = buf;
        buf = NULL;
    }

error:
    if (buf != NULL)
        FUNC7(buf);
    return(ret);
}