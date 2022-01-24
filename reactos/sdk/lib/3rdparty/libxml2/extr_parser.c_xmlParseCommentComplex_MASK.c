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
typedef  scalar_t__ xmlChar ;
struct TYPE_12__ {int options; scalar_t__ instate; int /*<<< orphan*/  userData; TYPE_2__* sax; int /*<<< orphan*/  disableSAX; TYPE_1__* input; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* comment ) (int /*<<< orphan*/ ,scalar_t__*) ;} ;
struct TYPE_10__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,size_t,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GROW ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  XML_ERR_COMMENT_NOT_FINISHED ; 
 int /*<<< orphan*/  XML_ERR_ENTITY_BOUNDARY ; 
 int /*<<< orphan*/  XML_ERR_HYPHEN_IN_COMMENT ; 
 int /*<<< orphan*/  XML_ERR_INVALID_CHAR ; 
 size_t XML_MAX_TEXT_LENGTH ; 
 size_t XML_PARSER_BUFFER_SIZE ; 
 scalar_t__ XML_PARSER_EOF ; 
 int XML_PARSE_HUGE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 scalar_t__ FUNC11 (size_t) ; 
 scalar_t__ FUNC12 (scalar_t__*,size_t) ; 

__attribute__((used)) static void
FUNC13(xmlParserCtxtPtr ctxt, xmlChar *buf,
                       size_t len, size_t size) {
    int q, ql;
    int r, rl;
    int cur, l;
    size_t count = 0;
    int inputid;

    inputid = ctxt->input->id;

    if (buf == NULL) {
        len = 0;
	size = XML_PARSER_BUFFER_SIZE;
	buf = (xmlChar *) FUNC11(size * sizeof(xmlChar));
	if (buf == NULL) {
	    FUNC5(ctxt, NULL);
	    return;
	}
    }
    GROW;	/* Assure there's enough input data */
    q = FUNC1(ql);
    if (q == 0)
        goto not_terminated;
    if (!FUNC2(q)) {
        FUNC8(ctxt, XML_ERR_INVALID_CHAR,
                          "xmlParseComment: invalid xmlChar value %d\n",
	                  q);
	FUNC10 (buf);
	return;
    }
    FUNC3(ql);
    r = FUNC1(rl);
    if (r == 0)
        goto not_terminated;
    if (!FUNC2(r)) {
        FUNC8(ctxt, XML_ERR_INVALID_CHAR,
                          "xmlParseComment: invalid xmlChar value %d\n",
	                  q);
	FUNC10 (buf);
	return;
    }
    FUNC3(rl);
    cur = FUNC1(l);
    if (cur == 0)
        goto not_terminated;
    while (FUNC2(cur) && /* checked */
           ((cur != '>') ||
	    (r != '-') || (q != '-'))) {
	if ((r == '-') && (q == '-')) {
	    FUNC6(ctxt, XML_ERR_HYPHEN_IN_COMMENT, NULL);
	}
        if ((len > XML_MAX_TEXT_LENGTH) &&
            ((ctxt->options & XML_PARSE_HUGE) == 0)) {
            FUNC9(ctxt, XML_ERR_COMMENT_NOT_FINISHED,
                         "Comment too big found", NULL);
            FUNC10 (buf);
            return;
        }
	if (len + 5 >= size) {
	    xmlChar *new_buf;
            size_t new_size;

	    new_size = size * 2;
	    new_buf = (xmlChar *) FUNC12(buf, new_size);
	    if (new_buf == NULL) {
		FUNC10 (buf);
		FUNC5(ctxt, NULL);
		return;
	    }
	    buf = new_buf;
            size = new_size;
	}
	FUNC0(ql,buf,len,q);
	q = r;
	ql = rl;
	r = cur;
	rl = l;

	count++;
	if (count > 50) {
	    GROW;
	    count = 0;
            if (ctxt->instate == XML_PARSER_EOF) {
		FUNC10(buf);
		return;
            }
	}
	FUNC3(l);
	cur = FUNC1(l);
	if (cur == 0) {
	    SHRINK;
	    GROW;
	    cur = FUNC1(l);
	}
    }
    buf[len] = 0;
    if (cur == 0) {
	FUNC9(ctxt, XML_ERR_COMMENT_NOT_FINISHED,
	                     "Comment not terminated \n<!--%.50s\n", buf);
    } else if (!FUNC2(cur)) {
        FUNC8(ctxt, XML_ERR_INVALID_CHAR,
                          "xmlParseComment: invalid xmlChar value %d\n",
	                  cur);
    } else {
	if (inputid != ctxt->input->id) {
	    FUNC7(ctxt, XML_ERR_ENTITY_BOUNDARY,
		           "Comment doesn't start and stop in the same"
                           " entity\n");
	}
        NEXT;
	if ((ctxt->sax != NULL) && (ctxt->sax->comment != NULL) &&
	    (!ctxt->disableSAX))
	    ctxt->sax->comment(ctxt->userData, buf);
    }
    FUNC10(buf);
    return;
not_terminated:
    FUNC9(ctxt, XML_ERR_COMMENT_NOT_FINISHED,
			 "Comment not terminated\n", NULL);
    FUNC10(buf);
    return;
}