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
typedef  TYPE_1__* xmlParserInputPtr ;
typedef  TYPE_2__* xmlParserInputBufferPtr ;
typedef  int /*<<< orphan*/  xmlParserCtxtPtr ;
typedef  scalar_t__ xmlCharEncoding ;
struct TYPE_8__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {TYPE_2__* buf; int /*<<< orphan*/ * filename; } ;

/* Variables and functions */
 scalar_t__ XML_CHAR_ENCODING_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ xmlParserDebugEntities ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

xmlParserInputPtr
FUNC4(xmlParserCtxtPtr ctxt, xmlParserInputBufferPtr input,
	            xmlCharEncoding enc) {
    xmlParserInputPtr inputStream;

    if (input == NULL) return(NULL);
    if (xmlParserDebugEntities)
	FUNC1(xmlGenericErrorContext, "new input from I/O\n");
    inputStream = FUNC2(ctxt);
    if (inputStream == NULL) {
	return(NULL);
    }
    inputStream->filename = NULL;
    inputStream->buf = input;
    FUNC0(inputStream->buf->buffer, inputStream);

    if (enc != XML_CHAR_ENCODING_NONE) {
        FUNC3(ctxt, enc);
    }

    return(inputStream);
}