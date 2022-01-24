#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  char xmlChar ;
struct TYPE_7__ {char* cur; int col; int /*<<< orphan*/  line; } ;
struct TYPE_6__ {int inputNr; scalar_t__ instate; scalar_t__ external; TYPE_4__* input; } ;

/* Variables and functions */
 char CUR ; 
 int /*<<< orphan*/  INPUT_CHUNK ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  NEXT ; 
 char FUNC1 (int) ; 
 scalar_t__ XML_PARSER_DTD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(xmlParserCtxtPtr ctxt) {
    int res = 0;

    /*
     * It's Okay to use CUR/NEXT here since all the blanks are on
     * the ASCII range.
     */
    if ((ctxt->inputNr == 1) && (ctxt->instate != XML_PARSER_DTD)) {
	const xmlChar *cur;
	/*
	 * if we are in the document content, go really fast
	 */
	cur = ctxt->input->cur;
	while (FUNC0(*cur)) {
	    if (*cur == '\n') {
		ctxt->input->line++; ctxt->input->col = 1;
	    } else {
		ctxt->input->col++;
	    }
	    cur++;
	    res++;
	    if (*cur == 0) {
		ctxt->input->cur = cur;
		FUNC3(ctxt->input, INPUT_CHUNK);
		cur = ctxt->input->cur;
	    }
	}
	ctxt->input->cur = cur;
    } else {
        int expandPE = ((ctxt->external != 0) || (ctxt->inputNr != 1));

	while (1) {
            if (FUNC0(CUR)) { /* CHECKED tstblanks.xml */
		NEXT;
	    } else if (CUR == '%') {
                /*
                 * Need to handle support of entities branching here
                 */
	        if ((expandPE == 0) || (FUNC0(FUNC1(1))) || (FUNC1(1) == 0))
                    break;
	        FUNC2(ctxt);
            } else if (CUR == 0) {
                if (ctxt->inputNr <= 1)
                    break;
                FUNC4(ctxt);
            } else {
                break;
            }

            /*
             * Also increase the counter when entering or exiting a PERef.
             * The spec says: "When a parameter-entity reference is recognized
             * in the DTD and included, its replacement text MUST be enlarged
             * by the attachment of one leading and one following space (#x20)
             * character."
             */
	    res++;
        }
    }
    return(res);
}