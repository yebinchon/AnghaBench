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
typedef  int /*<<< orphan*/ * xmlParserInputPtr ;
typedef  int /*<<< orphan*/  xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*) ; 

xmlParserInputPtr
FUNC5(const char *URL, const char *ID,
                      xmlParserCtxtPtr ctxt) {
    if ((URL != NULL) && (FUNC4(URL) == 0)) {
	char *canonicFilename;
	xmlParserInputPtr ret;

	canonicFilename = (char *) FUNC0((const xmlChar *) URL);
	if (canonicFilename == NULL) {
            FUNC3("building canonical path\n");
	    return(NULL);
	}

	ret = FUNC1(canonicFilename, ID, ctxt);
	FUNC2(canonicFilename);
	return(ret);
    }
    return(FUNC1(URL, ID, ctxt));
}