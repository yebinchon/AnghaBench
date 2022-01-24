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
typedef  scalar_t__ xmlParserInputState ;
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_9__ {scalar_t__ instate; int disableSAX; scalar_t__ recovery; TYPE_1__* input; } ;
struct TYPE_8__ {int id; unsigned int consumed; scalar_t__ cur; scalar_t__ end; int /*<<< orphan*/  line; scalar_t__ filename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char,char,char,char,char,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char,char,char,char,unsigned char,char,char) ; 
 int /*<<< orphan*/  const* CUR_PTR ; 
 int /*<<< orphan*/  GROW ; 
 int /*<<< orphan*/  NEXT ; 
 char FUNC2 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_ERR_CONDSEC_INVALID ; 
 int /*<<< orphan*/  XML_ERR_CONDSEC_INVALID_KEYWORD ; 
 int /*<<< orphan*/  XML_ERR_CONDSEC_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_BOUNDARY ; 
 int /*<<< orphan*/  XML_ERR_EXT_SUBSET_NOT_FINISHED ; 
 scalar_t__ XML_PARSER_EOF ; 
 scalar_t__ XML_PARSER_IGNORE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ xmlParserDebugEntities ; 

__attribute__((used)) static void
FUNC9(xmlParserCtxtPtr ctxt) {
    int id = ctxt->input->id;

    FUNC3(3);
    SKIP_BLANKS;
    if (FUNC1(CUR_PTR, 'I', 'N', 'C', 'L', 'U', 'D', 'E')) {
	FUNC3(7);
	SKIP_BLANKS;
	if (RAW != '[') {
	    FUNC4(ctxt, XML_ERR_CONDSEC_INVALID, NULL);
	    FUNC7(ctxt);
	    return;
	} else {
	    if (ctxt->input->id != id) {
		FUNC5(ctxt, XML_ERR_ENTITY_BOUNDARY,
	                       "All markup of the conditional section is not"
                               " in the same entity\n");
	    }
	    NEXT;
	}
	if (xmlParserDebugEntities) {
	    if ((ctxt->input != NULL) && (ctxt->input->filename))
		FUNC6(xmlGenericErrorContext,
			"%s(%d): ", ctxt->input->filename,
			ctxt->input->line);
	    FUNC6(xmlGenericErrorContext,
		    "Entering INCLUDE Conditional Section\n");
	}

        SKIP_BLANKS;
        GROW;
	while (((RAW != 0) && ((RAW != ']') || (FUNC2(1) != ']') ||
	        (FUNC2(2) != '>'))) && (ctxt->instate != XML_PARSER_EOF)) {
	    const xmlChar *check = CUR_PTR;
	    unsigned int cons = ctxt->input->consumed;

	    if ((RAW == '<') && (FUNC2(1) == '!') && (FUNC2(2) == '[')) {
		FUNC9(ctxt);
	    } else
		FUNC8(ctxt);

            SKIP_BLANKS;
            GROW;

	    if ((CUR_PTR == check) && (cons == ctxt->input->consumed)) {
		FUNC4(ctxt, XML_ERR_EXT_SUBSET_NOT_FINISHED, NULL);
		FUNC7(ctxt);
		break;
	    }
	}
	if (xmlParserDebugEntities) {
	    if ((ctxt->input != NULL) && (ctxt->input->filename))
		FUNC6(xmlGenericErrorContext,
			"%s(%d): ", ctxt->input->filename,
			ctxt->input->line);
	    FUNC6(xmlGenericErrorContext,
		    "Leaving INCLUDE Conditional Section\n");
	}

    } else if (FUNC0(CUR_PTR, 'I', 'G', 'N', 'O', 'R', 'E')) {
	int state;
	xmlParserInputState instate;
	int depth = 0;

	FUNC3(6);
	SKIP_BLANKS;
	if (RAW != '[') {
	    FUNC4(ctxt, XML_ERR_CONDSEC_INVALID, NULL);
	    FUNC7(ctxt);
	    return;
	} else {
	    if (ctxt->input->id != id) {
		FUNC5(ctxt, XML_ERR_ENTITY_BOUNDARY,
	                       "All markup of the conditional section is not"
                               " in the same entity\n");
	    }
	    NEXT;
	}
	if (xmlParserDebugEntities) {
	    if ((ctxt->input != NULL) && (ctxt->input->filename))
		FUNC6(xmlGenericErrorContext,
			"%s(%d): ", ctxt->input->filename,
			ctxt->input->line);
	    FUNC6(xmlGenericErrorContext,
		    "Entering IGNORE Conditional Section\n");
	}

	/*
	 * Parse up to the end of the conditional section
	 * But disable SAX event generating DTD building in the meantime
	 */
	state = ctxt->disableSAX;
	instate = ctxt->instate;
	if (ctxt->recovery == 0) ctxt->disableSAX = 1;
	ctxt->instate = XML_PARSER_IGNORE;

	while (((depth >= 0) && (RAW != 0)) &&
               (ctxt->instate != XML_PARSER_EOF)) {
	  if ((RAW == '<') && (FUNC2(1) == '!') && (FUNC2(2) == '[')) {
	    depth++;
	    FUNC3(3);
	    continue;
	  }
	  if ((RAW == ']') && (FUNC2(1) == ']') && (FUNC2(2) == '>')) {
	    if (--depth >= 0) FUNC3(3);
	    continue;
	  }
	  NEXT;
	  continue;
	}

	ctxt->disableSAX = state;
	ctxt->instate = instate;

	if (xmlParserDebugEntities) {
	    if ((ctxt->input != NULL) && (ctxt->input->filename))
		FUNC6(xmlGenericErrorContext,
			"%s(%d): ", ctxt->input->filename,
			ctxt->input->line);
	    FUNC6(xmlGenericErrorContext,
		    "Leaving IGNORE Conditional Section\n");
	}

    } else {
	FUNC4(ctxt, XML_ERR_CONDSEC_INVALID_KEYWORD, NULL);
	FUNC7(ctxt);
	return;
    }

    if (RAW == 0)
        SHRINK;

    if (RAW == 0) {
	FUNC4(ctxt, XML_ERR_CONDSEC_NOT_FINISHED, NULL);
    } else {
	if (ctxt->input->id != id) {
	    FUNC5(ctxt, XML_ERR_ENTITY_BOUNDARY,
	                   "All markup of the conditional section is not in"
                           " the same entity\n");
	}
	if ((ctxt-> instate != XML_PARSER_EOF) &&
	    ((ctxt->input->cur + 3) <= ctxt->input->end))
	    FUNC3(3);
    }
}