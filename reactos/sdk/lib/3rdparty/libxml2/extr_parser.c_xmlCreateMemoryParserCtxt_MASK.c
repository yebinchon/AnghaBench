#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserInputPtr ;
typedef  TYPE_2__* xmlParserInputBufferPtr ;
typedef  int /*<<< orphan*/ * xmlParserCtxtPtr ;
struct TYPE_9__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_8__ {TYPE_2__* buf; int /*<<< orphan*/ * filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_CHAR_ENCODING_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 TYPE_2__* FUNC6 (char const*,int,int /*<<< orphan*/ ) ; 

xmlParserCtxtPtr
FUNC7(const char *buffer, int size) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr input;
    xmlParserInputBufferPtr buf;

    if (buffer == NULL)
	return(NULL);
    if (size <= 0)
	return(NULL);

    ctxt = FUNC5();
    if (ctxt == NULL)
	return(NULL);

    /* TODO: xmlParserInputBufferCreateStatic, requires some serious changes */
    buf = FUNC6(buffer, size, XML_CHAR_ENCODING_NONE);
    if (buf == NULL) {
	FUNC2(ctxt);
	return(NULL);
    }

    input = FUNC4(ctxt);
    if (input == NULL) {
	FUNC3(buf);
	FUNC2(ctxt);
	return(NULL);
    }

    input->filename = NULL;
    input->buf = buf;
    FUNC1(input->buf->buffer, input);

    FUNC0(ctxt, input);
    return(ctxt);
}