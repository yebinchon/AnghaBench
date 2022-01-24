#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* xmlParserInputState ;
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  int xmlChar ;
struct TYPE_5__ {int instate; int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GROW ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  XML_ERR_LITERAL_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_LITERAL_NOT_STARTED ; 
 int /*<<< orphan*/  XML_ERR_NAME_TOO_LONG ; 
 int XML_MAX_NAME_LENGTH ; 
 int XML_PARSER_BUFFER_SIZE ; 
 int XML_PARSER_EOF ; 
 int XML_PARSER_SYSTEM_LITERAL ; 
 int XML_PARSE_HUGE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int*,int) ; 

xmlChar *
FUNC9(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = NULL;
    int len = 0;
    int size = XML_PARSER_BUFFER_SIZE;
    int cur, l;
    xmlChar stop;
    int state = ctxt->instate;
    int count = 0;

    SHRINK;
    if (RAW == '"') {
        NEXT;
	stop = '"';
    } else if (RAW == '\'') {
        NEXT;
	stop = '\'';
    } else {
	FUNC5(ctxt, XML_ERR_LITERAL_NOT_STARTED, NULL);
	return(NULL);
    }

    buf = (xmlChar *) FUNC7(size * sizeof(xmlChar));
    if (buf == NULL) {
        FUNC4(ctxt, NULL);
	return(NULL);
    }
    ctxt->instate = XML_PARSER_SYSTEM_LITERAL;
    cur = FUNC1(l);
    while ((FUNC2(cur)) && (cur != stop)) { /* checked */
	if (len + 5 >= size) {
	    xmlChar *tmp;

            if ((size > XML_MAX_NAME_LENGTH) &&
                ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                FUNC5(ctxt, XML_ERR_NAME_TOO_LONG, "SystemLiteral");
                FUNC6(buf);
		ctxt->instate = (xmlParserInputState) state;
                return(NULL);
            }
	    size *= 2;
	    tmp = (xmlChar *) FUNC8(buf, size * sizeof(xmlChar));
	    if (tmp == NULL) {
	        FUNC6(buf);
		FUNC4(ctxt, NULL);
		ctxt->instate = (xmlParserInputState) state;
		return(NULL);
	    }
	    buf = tmp;
	}
	count++;
	if (count > 50) {
	    GROW;
	    count = 0;
            if (ctxt->instate == XML_PARSER_EOF) {
	        FUNC6(buf);
		return(NULL);
            }
	}
	FUNC0(l,buf,len,cur);
	FUNC3(l);
	cur = FUNC1(l);
	if (cur == 0) {
	    GROW;
	    SHRINK;
	    cur = FUNC1(l);
	}
    }
    buf[len] = 0;
    ctxt->instate = (xmlParserInputState) state;
    if (!FUNC2(cur)) {
	FUNC5(ctxt, XML_ERR_LITERAL_NOT_FINISHED, NULL);
    } else {
	NEXT;
    }
    return(buf);
}