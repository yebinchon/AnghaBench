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
typedef  int /*<<< orphan*/ * xmlParserInputBufferPtr ;
typedef  int /*<<< orphan*/ * xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/ * xmlInputReadCallback ;
typedef  int /*<<< orphan*/  (* xmlInputCloseCallback ) (void*) ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;

/* Variables and functions */
 int /*<<< orphan*/  XML_CHAR_ENCODING_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (void*),void*,int /*<<< orphan*/ ) ; 

xmlDocPtr
FUNC7(xmlParserCtxtPtr ctxt, xmlInputReadCallback ioread,
              xmlInputCloseCallback ioclose, void *ioctx,
	      const char *URL,
              const char *encoding, int options)
{
    xmlParserInputBufferPtr input;
    xmlParserInputPtr stream;

    if (ioread == NULL)
        return (NULL);
    if (ctxt == NULL)
        return (NULL);
    FUNC4();

    FUNC1(ctxt);

    input = FUNC6(ioread, ioclose, ioctx,
                                         XML_CHAR_ENCODING_NONE);
    if (input == NULL) {
        if (ioclose != NULL)
            ioclose(ioctx);
        return (NULL);
    }
    stream = FUNC5(ctxt, input, XML_CHAR_ENCODING_NONE);
    if (stream == NULL) {
        FUNC3(input);
        return (NULL);
    }
    FUNC0(ctxt, stream);
    return (FUNC2(ctxt, URL, encoding, options, 1));
}