#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_6__ {scalar_t__ instate; int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GROW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  XML_ERR_NAME_TOO_LONG ; 
 int XML_MAX_NAMELEN ; 
 int XML_MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  XML_PARSER_CHUNK_SIZE ; 
 scalar_t__ XML_PARSER_EOF ; 
 int XML_PARSE_HUGE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  nbParseNmToken ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__*,int) ; 
 scalar_t__* FUNC10 (scalar_t__*,int) ; 

xmlChar *
FUNC11(xmlParserCtxtPtr ctxt) {
    xmlChar buf[XML_MAX_NAMELEN + 5];
    int len = 0, l;
    int c;
    int count = 0;

#ifdef DEBUG
    nbParseNmToken++;
#endif

    GROW;
    if (ctxt->instate == XML_PARSER_EOF)
        return(NULL);
    c = FUNC1(l);

    while (FUNC7(ctxt, c)) {
	if (count++ > XML_PARSER_CHUNK_SIZE) {
	    count = 0;
	    GROW;
	}
	FUNC0(l,buf,len,c);
	FUNC2(l);
	c = FUNC1(l);
	if (c == 0) {
	    count = 0;
	    GROW;
	    if (ctxt->instate == XML_PARSER_EOF)
		return(NULL);
            c = FUNC1(l);
	}
	if (len >= XML_MAX_NAMELEN) {
	    /*
	     * Okay someone managed to make a huge token, so he's ready to pay
	     * for the processing speed.
	     */
	    xmlChar *buffer;
	    int max = len * 2;

	    buffer = (xmlChar *) FUNC8(max * sizeof(xmlChar));
	    if (buffer == NULL) {
	        FUNC4(ctxt, NULL);
		return(NULL);
	    }
	    FUNC3(buffer, buf, len);
	    while (FUNC7(ctxt, c)) {
		if (count++ > XML_PARSER_CHUNK_SIZE) {
		    count = 0;
		    GROW;
                    if (ctxt->instate == XML_PARSER_EOF) {
                        FUNC6(buffer);
                        return(NULL);
                    }
		}
		if (len + 10 > max) {
		    xmlChar *tmp;

                    if ((max > XML_MAX_NAME_LENGTH) &&
                        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                        FUNC5(ctxt, XML_ERR_NAME_TOO_LONG, "NmToken");
                        FUNC6(buffer);
                        return(NULL);
                    }
		    max *= 2;
		    tmp = (xmlChar *) FUNC9(buffer,
			                            max * sizeof(xmlChar));
		    if (tmp == NULL) {
			FUNC4(ctxt, NULL);
			FUNC6(buffer);
			return(NULL);
		    }
		    buffer = tmp;
		}
		FUNC0(l,buffer,len,c);
		FUNC2(l);
		c = FUNC1(l);
	    }
	    buffer[len] = 0;
	    return(buffer);
	}
    }
    if (len == 0)
        return(NULL);
    if ((len > XML_MAX_NAME_LENGTH) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
        FUNC5(ctxt, XML_ERR_NAME_TOO_LONG, "NmToken");
        return(NULL);
    }
    return(FUNC10(buf, len));
}