#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserInputBufferPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_4__ {int (* readcallback ) (int /*<<< orphan*/ ,char*,int) ;int compressed; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * raw; int /*<<< orphan*/  rawconsumed; void* error; int /*<<< orphan*/ * encoder; int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int MINLEN ; 
 void* XML_ERR_NO_MEMORY ; 
 void* XML_IO_BUFFER_FULL ; 
 void* XML_IO_ENCODER ; 
 void* XML_IO_NO_INPUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  endOfInput ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC14(xmlParserInputBufferPtr in, int len) {
    char *buffer = NULL;
    int res = 0;
    int nbchars = 0;

    if ((in == NULL) || (in->error)) return(-1);
    if ((len <= MINLEN) && (len != 4))
        len = MINLEN;

    if (FUNC4(in->buffer) <= 0) {
	FUNC11(XML_IO_BUFFER_FULL, NULL);
	in->error = XML_IO_BUFFER_FULL;
	return(-1);
    }

    if (FUNC7(in->buffer, len + 1) < 0) {
        FUNC12("growing input buffer");
        in->error = XML_ERR_NO_MEMORY;
        return(-1);
    }
    buffer = (char *)FUNC6(in->buffer);

    /*
     * Call the read method for this I/O type.
     */
    if (in->readcallback != NULL) {
	res = in->readcallback(in->context, &buffer[0], len);
	if (res <= 0)
	    in->readcallback = endOfInput;
    } else {
	FUNC11(XML_IO_NO_INPUT, NULL);
	in->error = XML_IO_NO_INPUT;
	return(-1);
    }
    if (res < 0) {
	return(-1);
    }

    /*
     * try to establish compressed status of input if not done already
     */
    if (in->compressed == -1) {
#ifdef LIBXML_LZMA_ENABLED
	if (in->readcallback == xmlXzfileRead)
            in->compressed = __libxml2_xzcompressed(in->context);
#endif
    }

    len = res;
    if (in->encoder != NULL) {
        unsigned int use;

        /*
	 * Store the data in the incoming raw buffer
	 */
        if (in->raw == NULL) {
	    in->raw = FUNC5();
	}
	res = FUNC2(in->raw, (const xmlChar *) buffer, len);
	if (res != 0)
	    return(-1);

	/*
	 * convert as much as possible to the parser reading buffer.
	 */
	use = FUNC8(in->raw);
	nbchars = FUNC9(in, 1);
	if (nbchars < 0) {
	    FUNC11(XML_IO_ENCODER, NULL);
	    in->error = XML_IO_ENCODER;
	    return(-1);
	}
	in->rawconsumed += (use - FUNC8(in->raw));
    } else {
	nbchars = len;
        FUNC3(in->buffer, nbchars);
    }
#ifdef DEBUG_INPUT
    xmlGenericError(xmlGenericErrorContext,
	    "I/O: read %d chars, buffer %d\n",
            nbchars, xmlBufUse(in->buffer));
#endif
    return(nbchars);
}