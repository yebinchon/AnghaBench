#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_8__ {scalar_t__ instate; int options; int /*<<< orphan*/  userData; TYPE_1__* sax; int /*<<< orphan*/  disableSAX; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* characters ) (int /*<<< orphan*/ ,scalar_t__*,int) ;int /*<<< orphan*/  (* cdataBlock ) (int /*<<< orphan*/ ,scalar_t__*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  GROW ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  XML_ERR_CDATA_NOT_FINISHED ; 
 int XML_MAX_TEXT_LENGTH ; 
 int XML_PARSER_BUFFER_SIZE ; 
 scalar_t__ XML_PARSER_CDATA_SECTION ; 
 void* XML_PARSER_CONTENT ; 
 scalar_t__ XML_PARSER_EOF ; 
 int XML_PARSE_HUGE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (scalar_t__*,int) ; 

void
FUNC14(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = NULL;
    int len = 0;
    int size = XML_PARSER_BUFFER_SIZE;
    int r, rl;
    int	s, sl;
    int cur, l;
    int count = 0;

    /* Check 2.6.0 was NXT(0) not RAW */
    if (FUNC0(CUR_PTR, '<', '!', '[', 'C', 'D', 'A', 'T', 'A', '[')) {
	FUNC5(9);
    } else
        return;

    ctxt->instate = XML_PARSER_CDATA_SECTION;
    r = FUNC2(rl);
    if (!FUNC3(r)) {
	FUNC9(ctxt, XML_ERR_CDATA_NOT_FINISHED, NULL);
	ctxt->instate = XML_PARSER_CONTENT;
        return;
    }
    FUNC4(rl);
    s = FUNC2(sl);
    if (!FUNC3(s)) {
	FUNC9(ctxt, XML_ERR_CDATA_NOT_FINISHED, NULL);
	ctxt->instate = XML_PARSER_CONTENT;
        return;
    }
    FUNC4(sl);
    cur = FUNC2(l);
    buf = (xmlChar *) FUNC12(size * sizeof(xmlChar));
    if (buf == NULL) {
	FUNC8(ctxt, NULL);
	return;
    }
    while (FUNC3(cur) &&
           ((r != ']') || (s != ']') || (cur != '>'))) {
	if (len + 5 >= size) {
	    xmlChar *tmp;

            if ((size > XML_MAX_TEXT_LENGTH) &&
                ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                FUNC10(ctxt, XML_ERR_CDATA_NOT_FINISHED,
                             "CData section too big found", NULL);
                FUNC11 (buf);
                return;
            }
	    tmp = (xmlChar *) FUNC13(buf, size * 2 * sizeof(xmlChar));
	    if (tmp == NULL) {
	        FUNC11(buf);
		FUNC8(ctxt, NULL);
		return;
	    }
	    buf = tmp;
	    size *= 2;
	}
	FUNC1(rl,buf,len,r);
	r = s;
	rl = sl;
	s = cur;
	sl = l;
	count++;
	if (count > 50) {
	    GROW;
            if (ctxt->instate == XML_PARSER_EOF) {
		FUNC11(buf);
		return;
            }
	    count = 0;
	}
	FUNC4(l);
	cur = FUNC2(l);
    }
    buf[len] = 0;
    ctxt->instate = XML_PARSER_CONTENT;
    if (cur != '>') {
	FUNC10(ctxt, XML_ERR_CDATA_NOT_FINISHED,
	                     "CData section not finished\n%.50s\n", buf);
	FUNC11(buf);
        return;
    }
    FUNC4(l);

    /*
     * OK the buffer is to be consumed as cdata.
     */
    if ((ctxt->sax != NULL) && (!ctxt->disableSAX)) {
	if (ctxt->sax->cdataBlock != NULL)
	    ctxt->sax->cdataBlock(ctxt->userData, buf, len);
	else if (ctxt->sax->characters != NULL)
	    ctxt->sax->characters(ctxt->userData, buf, len);
    }
    FUNC11(buf);
}