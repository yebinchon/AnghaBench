#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  TYPE_2__* xmlEnumerationPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_12__ {struct TYPE_12__* next; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  dict; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEXT ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_DTD_DUP_TOKEN ; 
 int /*<<< orphan*/  XML_ERR_NAME_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_NOTATION_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_NOTATION_NOT_STARTED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

xmlEnumerationPtr
FUNC9(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;
    xmlEnumerationPtr ret = NULL, last = NULL, cur, tmp;

    if (RAW != '(') {
	FUNC2(ctxt, XML_ERR_NOTATION_NOT_STARTED, NULL);
	return(NULL);
    }
    SHRINK;
    do {
        NEXT;
	SKIP_BLANKS;
        name = FUNC6(ctxt);
	if (name == NULL) {
	    FUNC3(ctxt, XML_ERR_NAME_REQUIRED,
			   "Name expected in NOTATION declaration\n");
            FUNC5(ret);
	    return(NULL);
	}
	tmp = ret;
	while (tmp != NULL) {
	    if (FUNC7(name, tmp->name)) {
		FUNC8(ctxt, XML_DTD_DUP_TOKEN,
	  "standalone: attribute notation value token %s duplicated\n",
				 name, NULL);
		if (!FUNC1(ctxt->dict, name))
		    FUNC4((xmlChar *) name);
		break;
	    }
	    tmp = tmp->next;
	}
	if (tmp == NULL) {
	    cur = FUNC0(name);
	    if (cur == NULL) {
                FUNC5(ret);
                return(NULL);
            }
	    if (last == NULL) ret = last = cur;
	    else {
		last->next = cur;
		last = cur;
	    }
	}
	SKIP_BLANKS;
    } while (RAW == '|');
    if (RAW != ')') {
	FUNC2(ctxt, XML_ERR_NOTATION_NOT_FINISHED, NULL);
        FUNC5(ret);
	return(NULL);
    }
    NEXT;
    return(ret);
}