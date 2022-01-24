#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xmlParserInputPtr ;
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_8__ {char* directory; scalar_t__ input_id; int /*<<< orphan*/  _private; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 () ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static xmlParserCtxtPtr
FUNC7(const xmlChar *URL, const xmlChar *ID,
	                  const xmlChar *base, xmlParserCtxtPtr pctx) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr inputStream;
    char *directory = NULL;
    xmlChar *uri;

    ctxt = FUNC5();
    if (ctxt == NULL) {
	return(NULL);
    }

    if (pctx != NULL) {
        ctxt->options = pctx->options;
        ctxt->_private = pctx->_private;
	/*
	 * this is a subparser of pctx, so the input_id should be
	 * incremented to distinguish from main entity
	 */
	ctxt->input_id = pctx->input_id + 1;
    }

    uri = FUNC1(URL, base);

    if (uri == NULL) {
	inputStream = FUNC4((char *)URL, (char *)ID, ctxt);
	if (inputStream == NULL) {
	    FUNC3(ctxt);
	    return(NULL);
	}

	FUNC0(ctxt, inputStream);

	if ((ctxt->directory == NULL) && (directory == NULL))
	    directory = FUNC6((char *)URL);
	if ((ctxt->directory == NULL) && (directory != NULL))
	    ctxt->directory = directory;
    } else {
	inputStream = FUNC4((char *)uri, (char *)ID, ctxt);
	if (inputStream == NULL) {
	    FUNC2(uri);
	    FUNC3(ctxt);
	    return(NULL);
	}

	FUNC0(ctxt, inputStream);

	if ((ctxt->directory == NULL) && (directory == NULL))
	    directory = FUNC6((char *)uri);
	if ((ctxt->directory == NULL) && (directory != NULL))
	    ctxt->directory = directory;
	FUNC2(uri);
    }
    return(ctxt);
}