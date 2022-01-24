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
struct TYPE_8__ {int linenumbers; char* directory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC5 () ; 
 char* FUNC6 (char const*) ; 

xmlParserCtxtPtr
FUNC7(const char *filename, int options)
{
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr inputStream;
    char *directory = NULL;

    ctxt = FUNC5();
    if (ctxt == NULL) {
	FUNC2(NULL, "cannot allocate parser context");
	return(NULL);
    }

    if (options)
	FUNC1(ctxt, options, NULL);
    ctxt->linenumbers = 1;

    inputStream = FUNC4(filename, NULL, ctxt);
    if (inputStream == NULL) {
	FUNC3(ctxt);
	return(NULL);
    }

    FUNC0(ctxt, inputStream);
    if ((ctxt->directory == NULL) && (directory == NULL))
        directory = FUNC6(filename);
    if ((ctxt->directory == NULL) && (directory != NULL))
        ctxt->directory = directory;

    return(ctxt);
}