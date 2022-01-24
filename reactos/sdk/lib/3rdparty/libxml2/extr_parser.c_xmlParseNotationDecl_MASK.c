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
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_12__ {int /*<<< orphan*/  userData; TYPE_2__* sax; int /*<<< orphan*/  disableSAX; TYPE_1__* input; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* notationDecl ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {int id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  NEXT ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_BOUNDARY ; 
 int /*<<< orphan*/  XML_ERR_NOTATION_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_NOTATION_NOT_STARTED ; 
 int /*<<< orphan*/  XML_ERR_SPACE_REQUIRED ; 
 int /*<<< orphan*/  XML_NS_ERR_COLON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,char) ; 

void
FUNC10(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    xmlChar *Pubid;
    xmlChar *Systemid;

    if (FUNC0(CUR_PTR, '<', '!', 'N', 'O', 'T', 'A', 'T', 'I', 'O', 'N')) {
	int inputid = ctxt->input->id;
	SHRINK;
	FUNC1(10);
	if (SKIP_BLANKS == 0) {
	    FUNC4(ctxt, XML_ERR_SPACE_REQUIRED,
			   "Space required after '<!NOTATION'\n");
	    return;
	}

        name = FUNC8(ctxt);
	if (name == NULL) {
	    FUNC3(ctxt, XML_ERR_NOTATION_NOT_STARTED, NULL);
	    return;
	}
	if (FUNC9(name, ':') != NULL) {
	    FUNC6(ctxt, XML_NS_ERR_COLON,
		     "colons are forbidden from notation names '%s'\n",
		     name, NULL, NULL);
	}
	if (SKIP_BLANKS == 0) {
	    FUNC4(ctxt, XML_ERR_SPACE_REQUIRED,
		     "Space required after the NOTATION name'\n");
	    return;
	}

	/*
	 * Parse the IDs.
	 */
	Systemid = FUNC7(ctxt, &Pubid, 0);
	SKIP_BLANKS;

	if (RAW == '>') {
	    if (inputid != ctxt->input->id) {
		FUNC4(ctxt, XML_ERR_ENTITY_BOUNDARY,
	                       "Notation declaration doesn't start and stop"
                               " in the same entity\n");
	    }
	    NEXT;
	    if ((ctxt->sax != NULL) && (!ctxt->disableSAX) &&
		(ctxt->sax->notationDecl != NULL))
		ctxt->sax->notationDecl(ctxt->userData, name, Pubid, Systemid);
	} else {
	    FUNC3(ctxt, XML_ERR_NOTATION_NOT_FINISHED, NULL);
	}
	if (Systemid != NULL) FUNC5(Systemid);
	if (Pubid != NULL) FUNC5(Pubid);
    }
}