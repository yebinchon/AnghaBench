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
typedef  int /*<<< orphan*/ * xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

xmlDocPtr
FUNC5(xmlParserCtxtPtr ctxt, const char *filename,
                const char *encoding, int options)
{
    xmlParserInputPtr stream;

    if (filename == NULL)
        return (NULL);
    if (ctxt == NULL)
        return (NULL);
    FUNC3();

    FUNC1(ctxt);

    stream = FUNC4(filename, NULL, ctxt);
    if (stream == NULL) {
        return (NULL);
    }
    FUNC0(ctxt, stream);
    return (FUNC2(ctxt, NULL, encoding, options, 1));
}