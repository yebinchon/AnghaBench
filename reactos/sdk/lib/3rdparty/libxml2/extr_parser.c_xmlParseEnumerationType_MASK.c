#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  TYPE_2__* xmlEnumerationPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_11__ {struct TYPE_11__* next; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  dict; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEXT ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XML_DTD_DUP_TOKEN ; 
 int /*<<< orphan*/  XML_ERR_ATTLIST_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_ATTLIST_NOT_STARTED ; 
 int /*<<< orphan*/  XML_ERR_NMTOKEN_REQUIRED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

xmlEnumerationPtr
FUNC8(xmlParserCtxtPtr ctxt) {
    xmlChar *name;
    xmlEnumerationPtr ret = NULL, last = NULL, cur, tmp;

    if (RAW != '(') {
	FUNC2(ctxt, XML_ERR_ATTLIST_NOT_STARTED, NULL);
	return(NULL);
    }
    SHRINK;
    do {
        NEXT;
	SKIP_BLANKS;
        name = FUNC5(ctxt);
	if (name == NULL) {
	    FUNC2(ctxt, XML_ERR_NMTOKEN_REQUIRED, NULL);
	    return(ret);
	}
	tmp = ret;
	while (tmp != NULL) {
	    if (FUNC6(name, tmp->name)) {
		FUNC7(ctxt, XML_DTD_DUP_TOKEN,
	  "standalone: attribute enumeration value token %s duplicated\n",
				 name, NULL);
		if (!FUNC1(ctxt->dict, name))
		    FUNC3(name);
		break;
	    }
	    tmp = tmp->next;
	}
	if (tmp == NULL) {
	    cur = FUNC0(name);
	    if (!FUNC1(ctxt->dict, name))
		FUNC3(name);
	    if (cur == NULL) {
                FUNC4(ret);
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
	FUNC2(ctxt, XML_ERR_ATTLIST_NOT_FINISHED, NULL);
	return(ret);
    }
    NEXT;
    return(ret);
}