#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xmlParserCtxtPtr ;
typedef  char xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ERR_RESERVED_XML_NAME ; 
 int /*<<< orphan*/  XML_NS_ERR_COLON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char) ; 
 int /*<<< orphan*/ ** xmlW3CPIs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const xmlChar *
FUNC7(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;

    name = FUNC3(ctxt);
    if ((name != NULL) &&
        ((name[0] == 'x') || (name[0] == 'X')) &&
        ((name[1] == 'm') || (name[1] == 'M')) &&
        ((name[2] == 'l') || (name[2] == 'L'))) {
	int i;
	if ((name[0] == 'x') && (name[1] == 'm') &&
	    (name[2] == 'l') && (name[3] == 0)) {
	    FUNC1(ctxt, XML_ERR_RESERVED_XML_NAME,
		 "XML declaration allowed only at the start of the document\n");
	    return(name);
	} else if (name[3] == 0) {
	    FUNC0(ctxt, XML_ERR_RESERVED_XML_NAME, NULL);
	    return(name);
	}
	for (i = 0;;i++) {
	    if (xmlW3CPIs[i] == NULL) break;
	    if (FUNC4(name, (const xmlChar *)xmlW3CPIs[i]))
	        return(name);
	}
	FUNC6(ctxt, XML_ERR_RESERVED_XML_NAME,
		      "xmlParsePITarget: invalid name prefix 'xml'\n",
		      NULL, NULL);
    }
    if ((name != NULL) && (FUNC5(name, ':') != NULL)) {
	FUNC2(ctxt, XML_NS_ERR_COLON,
		 "colons are forbidden from PI names '%s'\n", name, NULL, NULL);
    }
    return(name);
}