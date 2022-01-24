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
typedef  int /*<<< orphan*/  xmlSchemaValidityWarningFunc ;
typedef  int /*<<< orphan*/  xmlSchemaValidityErrorFunc ;
typedef  int /*<<< orphan*/  xmlSchemaValidCtxtPtr ;
typedef  void* xmlSAXHandlerPtr ;
typedef  int /*<<< orphan*/ * xmlParserInputPtr ;
typedef  int /*<<< orphan*/ * xmlParserInputBufferPtr ;
typedef  TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_7__ {void* sax; int /*<<< orphan*/ * myDoc; void* userData; } ;

/* Variables and functions */
 int /*<<< orphan*/  XMLLINT_ERR_VALID ; 
 int /*<<< orphan*/  XML_CHAR_ENCODING_NONE ; 
 scalar_t__ callbacks ; 
 void* debugSAX2Handler ; 
 void* debugSAXHandler ; 
 void* emptySAXHandler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ noout ; 
 int /*<<< orphan*/  progresult ; 
 scalar_t__ repeat ; 
 scalar_t__ sax1 ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * wxschemas ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,void*) ; 

__attribute__((used)) static void
FUNC14(const char *filename) {
    xmlSAXHandlerPtr handler;
    const char *user_data = "user_data"; /* mostly for debugging */
    xmlParserInputBufferPtr buf = NULL;
    xmlParserInputPtr inputStream;
    xmlParserCtxtPtr ctxt = NULL;
    xmlSAXHandlerPtr old_sax = NULL;

    callbacks = 0;

    if (noout) {
        handler = emptySAXHandler;
#ifdef LIBXML_SAX1_ENABLED
    } else if (sax1) {
        handler = debugSAXHandler;
#endif
    } else {
        handler = debugSAX2Handler;
    }

    /*
     * it's not the simplest code but the most generic in term of I/O
     */
    buf = FUNC8(filename, XML_CHAR_ENCODING_NONE);
    if (buf == NULL) {
        goto error;
    }

#ifdef LIBXML_SCHEMAS_ENABLED
    if (wxschemas != NULL) {
        int ret;
	xmlSchemaValidCtxtPtr vctxt;

	vctxt = xmlSchemaNewValidCtxt(wxschemas);
	xmlSchemaSetValidErrors(vctxt,
		(xmlSchemaValidityErrorFunc) fprintf,
		(xmlSchemaValidityWarningFunc) fprintf,
		stderr);
	xmlSchemaValidateSetFilename(vctxt, filename);

	ret = xmlSchemaValidateStream(vctxt, buf, 0, handler,
	                              (void *)user_data);
	if (repeat == 0) {
	    if (ret == 0) {
		fprintf(stderr, "%s validates\n", filename);
	    } else if (ret > 0) {
		fprintf(stderr, "%s fails to validate\n", filename);
		progresult = XMLLINT_ERR_VALID;
	    } else {
		fprintf(stderr, "%s validation generated an internal error\n",
		       filename);
		progresult = XMLLINT_ERR_VALID;
	    }
	}
	xmlSchemaFreeValidCtxt(vctxt);
    } else
#endif
    {
	/*
	 * Create the parser context amd hook the input
	 */
	ctxt = FUNC6();
	if (ctxt == NULL) {
	    FUNC4(buf);
	    goto error;
	}
	old_sax = ctxt->sax;
	ctxt->sax = handler;
	ctxt->userData = (void *) user_data;
	inputStream = FUNC5(ctxt, buf, XML_CHAR_ENCODING_NONE);
	if (inputStream == NULL) {
	    FUNC4(buf);
	    goto error;
	}
	FUNC1(ctxt, inputStream);

	/* do the parsing */
	FUNC7(ctxt);

	if (ctxt->myDoc != NULL) {
	    FUNC0(stderr, "SAX generated a doc !\n");
	    FUNC2(ctxt->myDoc);
	    ctxt->myDoc = NULL;
	}
    }

error:
    if (ctxt != NULL) {
        ctxt->sax = old_sax;
        FUNC3(ctxt);
    }
}