#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_7__ {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*,int,int) ; 
 int FUNC1 (scalar_t__ const*,int) ; 
 int /*<<< orphan*/  XML_ERR_NAME_TOO_LONG ; 
 int XML_MAX_NAMELEN ; 
 int XML_MAX_NAME_LENGTH ; 
 int XML_PARSE_HUGE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  nbParseStringName ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__*,int) ; 
 scalar_t__* FUNC10 (scalar_t__*,int) ; 

__attribute__((used)) static xmlChar *
FUNC11(xmlParserCtxtPtr ctxt, const xmlChar** str) {
    xmlChar buf[XML_MAX_NAMELEN + 5];
    const xmlChar *cur = *str;
    int len = 0, l;
    int c;

#ifdef DEBUG
    nbParseStringName++;
#endif

    c = FUNC1(cur, l);
    if (!FUNC7(ctxt, c)) {
	return(NULL);
    }

    FUNC0(l,buf,len,c);
    cur += l;
    c = FUNC1(cur, l);
    while (FUNC6(ctxt, c)) {
	FUNC0(l,buf,len,c);
	cur += l;
	c = FUNC1(cur, l);
	if (len >= XML_MAX_NAMELEN) { /* test bigentname.xml */
	    /*
	     * Okay someone managed to make a huge name, so he's ready to pay
	     * for the processing speed.
	     */
	    xmlChar *buffer;
	    int max = len * 2;

	    buffer = (xmlChar *) FUNC8(max * sizeof(xmlChar));
	    if (buffer == NULL) {
	        FUNC3(ctxt, NULL);
		return(NULL);
	    }
	    FUNC2(buffer, buf, len);
	    while (FUNC6(ctxt, c)) {
		if (len + 10 > max) {
		    xmlChar *tmp;

                    if ((len > XML_MAX_NAME_LENGTH) &&
                        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                        FUNC4(ctxt, XML_ERR_NAME_TOO_LONG, "NCName");
			FUNC5(buffer);
                        return(NULL);
                    }
		    max *= 2;
		    tmp = (xmlChar *) FUNC9(buffer,
			                            max * sizeof(xmlChar));
		    if (tmp == NULL) {
			FUNC3(ctxt, NULL);
			FUNC5(buffer);
			return(NULL);
		    }
		    buffer = tmp;
		}
		FUNC0(l,buffer,len,c);
		cur += l;
		c = FUNC1(cur, l);
	    }
	    buffer[len] = 0;
	    *str = cur;
	    return(buffer);
	}
    }
    if ((len > XML_MAX_NAME_LENGTH) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
        FUNC4(ctxt, XML_ERR_NAME_TOO_LONG, "NCName");
        return(NULL);
    }
    *str = cur;
    return(FUNC10(buf, len));
}