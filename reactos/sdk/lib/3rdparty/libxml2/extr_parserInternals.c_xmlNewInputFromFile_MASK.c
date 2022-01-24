#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserInputPtr ;
typedef  TYPE_2__* xmlParserInputBufferPtr ;
typedef  TYPE_3__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  const xmlChar ;
struct TYPE_16__ {char* directory; } ;
struct TYPE_15__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_14__ {char* filename; char* directory; TYPE_2__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_CHAR_ENCODING_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 TYPE_1__* FUNC6 (TYPE_3__*) ; 
 scalar_t__ xmlParserDebugEntities ; 
 char* FUNC7 (char const*) ; 
 TYPE_2__* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC9 (int /*<<< orphan*/  const*) ; 

xmlParserInputPtr
FUNC10(xmlParserCtxtPtr ctxt, const char *filename) {
    xmlParserInputBufferPtr buf;
    xmlParserInputPtr inputStream;
    char *directory = NULL;
    xmlChar *URI = NULL;

    if (xmlParserDebugEntities)
	FUNC5(xmlGenericErrorContext,
		"new input from file: %s\n", filename);
    if (ctxt == NULL) return(NULL);
    buf = FUNC8(filename, XML_CHAR_ENCODING_NONE);
    if (buf == NULL) {
	if (filename == NULL)
	    FUNC0(ctxt,
	                   "failed to load external entity: NULL filename \n",
			   NULL);
	else
	    FUNC0(ctxt, "failed to load external entity \"%s\"\n",
			   (const char *) filename);
	return(NULL);
    }

    inputStream = FUNC6(ctxt);
    if (inputStream == NULL)
	return(NULL);

    inputStream->buf = buf;
    inputStream = FUNC3(ctxt, inputStream);
    if (inputStream == NULL)
        return(NULL);

    if (inputStream->filename == NULL)
	URI = FUNC9((xmlChar *) filename);
    else
	URI = FUNC9((xmlChar *) inputStream->filename);
    directory = FUNC7((const char *) URI);
    if (inputStream->filename != NULL) FUNC4((char *)inputStream->filename);
    inputStream->filename = (char *) FUNC2((const xmlChar *) URI);
    if (URI != NULL) FUNC4((char *) URI);
    inputStream->directory = directory;

    FUNC1(inputStream->buf->buffer, inputStream);
    if ((ctxt->directory == NULL) && (directory != NULL))
        ctxt->directory = (char *) FUNC9((const xmlChar *) directory);
    return(inputStream);
}