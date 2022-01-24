#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlSAXHandlerV1 ;
typedef  TYPE_1__* xmlSAXHandlerPtr ;
typedef  int /*<<< orphan*/  xmlSAXHandler ;
typedef  int /*<<< orphan*/ * xmlParserInputPtr ;
typedef  int /*<<< orphan*/ * xmlParserInputBufferPtr ;
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/ * xmlInputReadCallback ;
typedef  int /*<<< orphan*/  (* xmlInputCloseCallback ) (void*) ;
typedef  int /*<<< orphan*/  xmlCharEncoding ;
struct TYPE_15__ {void* userData; TYPE_1__* sax; } ;
struct TYPE_14__ {scalar_t__ initialized; } ;

/* Variables and functions */
 scalar_t__ XML_SAX2_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xmlDefaultSAXHandler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (void*),void*,int /*<<< orphan*/ ) ; 

xmlParserCtxtPtr
FUNC11(xmlSAXHandlerPtr sax, void *user_data,
	xmlInputReadCallback   ioread, xmlInputCloseCallback  ioclose,
	void *ioctx, xmlCharEncoding enc) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr inputStream;
    xmlParserInputBufferPtr buf;

    if (ioread == NULL) return(NULL);

    buf = FUNC10(ioread, ioclose, ioctx, enc);
    if (buf == NULL) {
        if (ioclose != NULL)
            ioclose(ioctx);
        return (NULL);
    }

    ctxt = FUNC9();
    if (ctxt == NULL) {
	FUNC6(buf);
	return(NULL);
    }
    if (sax != NULL) {
#ifdef LIBXML_SAX1_ENABLED
	if (ctxt->sax != (xmlSAXHandlerPtr) &xmlDefaultSAXHandler)
#endif /* LIBXML_SAX1_ENABLED */
	    FUNC4(ctxt->sax);
	ctxt->sax = (xmlSAXHandlerPtr) FUNC7(sizeof(xmlSAXHandler));
	if (ctxt->sax == NULL) {
	    FUNC3(ctxt, NULL);
	    FUNC5(ctxt);
	    return(NULL);
	}
	FUNC2(ctxt->sax, 0, sizeof(xmlSAXHandler));
	if (sax->initialized == XML_SAX2_MAGIC)
	    FUNC1(ctxt->sax, sax, sizeof(xmlSAXHandler));
	else
	    FUNC1(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
	if (user_data != NULL)
	    ctxt->userData = user_data;
    }

    inputStream = FUNC8(ctxt, buf, enc);
    if (inputStream == NULL) {
	FUNC5(ctxt);
	return(NULL);
    }
    FUNC0(ctxt, inputStream);

    return(ctxt);
}