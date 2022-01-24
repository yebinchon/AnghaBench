#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  TYPE_2__* xmlEntityPtr ;
typedef  int xmlChar ;
struct TYPE_19__ {int checked; scalar_t__ etype; int* content; int* name; } ;
struct TYPE_18__ {int depth; int options; int nbentities; scalar_t__ validate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,size_t,int) ; 
 int FUNC1 (int const*,int) ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_LOOP ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_PROCESSING ; 
 int /*<<< orphan*/  XML_ERR_INTERNAL_ERROR ; 
 scalar_t__ XML_INTERNAL_PREDEFINED_ENTITY ; 
 size_t XML_PARSER_BIG_BUFFER_SIZE ; 
 size_t XML_PARSER_BUFFER_SIZE ; 
 int XML_PARSE_DTDVALID ; 
 int XML_PARSE_HUGE ; 
 int XML_PARSE_NOENT ; 
 int XML_SUBSTITUTE_PEREF ; 
 int XML_SUBSTITUTE_REF ; 
 int /*<<< orphan*/  FUNC2 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int const*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int FUNC10 (TYPE_1__*,int const**) ; 
 TYPE_2__* FUNC11 (TYPE_1__*,int const**) ; 
 TYPE_2__* FUNC12 (TYPE_1__*,int const**) ; 
 scalar_t__ xmlParserDebugEntities ; 
 scalar_t__ FUNC13 (TYPE_1__*,size_t,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int* FUNC14 (TYPE_1__*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *) ; 

xmlChar *
FUNC17(xmlParserCtxtPtr ctxt, const xmlChar *str, int len,
		      int what, xmlChar end, xmlChar  end2, xmlChar end3) {
    xmlChar *buffer = NULL;
    size_t buffer_size = 0;
    size_t nbchars = 0;

    xmlChar *current = NULL;
    xmlChar *rep = NULL;
    const xmlChar *last;
    xmlEntityPtr ent;
    int c,l;

    if ((ctxt == NULL) || (str == NULL) || (len < 0))
	return(NULL);
    last = str + len;

    if (((ctxt->depth > 40) &&
         ((ctxt->options & XML_PARSE_HUGE) == 0)) ||
	(ctxt->depth > 1024)) {
	FUNC4(ctxt, XML_ERR_ENTITY_LOOP, NULL);
	return(NULL);
    }

    /*
     * allocate a translation buffer.
     */
    buffer_size = XML_PARSER_BIG_BUFFER_SIZE;
    buffer = (xmlChar *) FUNC9(buffer_size);
    if (buffer == NULL) goto mem_error;

    /*
     * OK loop until we reach one of the ending char or a size limit.
     * we are operating on already parsed values.
     */
    if (str < last)
	c = FUNC1(str, l);
    else
        c = 0;
    while ((c != 0) && (c != end) && /* non input consuming loop */
	   (c != end2) && (c != end3)) {

	if (c == 0) break;
        if ((c == '&') && (str[1] == '#')) {
	    int val = FUNC10(ctxt, &str);
	    if (val == 0)
                goto int_error;
	    FUNC0(0,buffer,nbchars,val);
	    if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
	        FUNC2(buffer, XML_PARSER_BUFFER_SIZE);
	    }
	} else if ((c == '&') && (what & XML_SUBSTITUTE_REF)) {
	    if (xmlParserDebugEntities)
		FUNC7(xmlGenericErrorContext,
			"String decoding Entity Reference: %.30s\n",
			str);
	    ent = FUNC11(ctxt, &str);
	    FUNC13(ctxt, 0, ent, 0);
	    if (ent != NULL)
	        ctxt->nbentities += ent->checked / 2;
	    if ((ent != NULL) &&
		(ent->etype == XML_INTERNAL_PREDEFINED_ENTITY)) {
		if (ent->content != NULL) {
		    FUNC0(0,buffer,nbchars,ent->content[0]);
		    if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
			FUNC2(buffer, XML_PARSER_BUFFER_SIZE);
		    }
		} else {
		    FUNC5(ctxt, XML_ERR_INTERNAL_ERROR,
			    "predefined entity has no content\n");
                    goto int_error;
		}
	    } else if ((ent != NULL) && (ent->content != NULL)) {
		ctxt->depth++;
		rep = FUNC14(ctxt, ent->content, what,
			                      0, 0, 0);
		ctxt->depth--;
		if (rep == NULL)
                    goto int_error;

                current = rep;
                while (*current != 0) { /* non input consuming loop */
                    buffer[nbchars++] = *current++;
                    if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
                        if (FUNC13(ctxt, nbchars, ent, 0))
                            goto int_error;
                        FUNC2(buffer, XML_PARSER_BUFFER_SIZE);
                    }
                }
                FUNC6(rep);
                rep = NULL;
	    } else if (ent != NULL) {
		int i = FUNC15(ent->name);
		const xmlChar *cur = ent->name;

		buffer[nbchars++] = '&';
		if (nbchars + i + XML_PARSER_BUFFER_SIZE > buffer_size) {
		    FUNC2(buffer, i + XML_PARSER_BUFFER_SIZE);
		}
		for (;i > 0;i--)
		    buffer[nbchars++] = *cur++;
		buffer[nbchars++] = ';';
	    }
	} else if (c == '%' && (what & XML_SUBSTITUTE_PEREF)) {
	    if (xmlParserDebugEntities)
		FUNC7(xmlGenericErrorContext,
			"String decoding PE Reference: %.30s\n", str);
	    ent = FUNC12(ctxt, &str);
	    FUNC13(ctxt, 0, ent, 0);
	    if (ent != NULL)
	        ctxt->nbentities += ent->checked / 2;
	    if (ent != NULL) {
                if (ent->content == NULL) {
		    /*
		     * Note: external parsed entities will not be loaded,
		     * it is not required for a non-validating parser to
		     * complete external PEreferences coming from the
		     * internal subset
		     */
		    if (((ctxt->options & XML_PARSE_NOENT) != 0) ||
			((ctxt->options & XML_PARSE_DTDVALID) != 0) ||
			(ctxt->validate != 0)) {
			FUNC8(ctxt, ent);
		    } else {
			FUNC16(ctxt, XML_ERR_ENTITY_PROCESSING,
		  "not validating will not read content for PE entity %s\n",
		                      ent->name, NULL);
		    }
		}
		ctxt->depth++;
		rep = FUNC14(ctxt, ent->content, what,
			                      0, 0, 0);
		ctxt->depth--;
		if (rep == NULL)
                    goto int_error;
                current = rep;
                while (*current != 0) { /* non input consuming loop */
                    buffer[nbchars++] = *current++;
                    if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
                        if (FUNC13(ctxt, nbchars, ent, 0))
                            goto int_error;
                        FUNC2(buffer, XML_PARSER_BUFFER_SIZE);
                    }
                }
                FUNC6(rep);
                rep = NULL;
	    }
	} else {
	    FUNC0(l,buffer,nbchars,c);
	    str += l;
	    if (nbchars + XML_PARSER_BUFFER_SIZE > buffer_size) {
	        FUNC2(buffer, XML_PARSER_BUFFER_SIZE);
	    }
	}
	if (str < last)
	    c = FUNC1(str, l);
	else
	    c = 0;
    }
    buffer[nbchars] = 0;
    return(buffer);

mem_error:
    FUNC3(ctxt, NULL);
int_error:
    if (rep != NULL)
        FUNC6(rep);
    if (buffer != NULL)
        FUNC6(buffer);
    return(NULL);
}