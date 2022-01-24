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
typedef  int /*<<< orphan*/ * xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

xmlDocPtr
FUNC3(const char *filename, const char *encoding, int options)
{
    xmlParserCtxtPtr ctxt;

    FUNC2();
    ctxt = FUNC0(filename, options);
    if (ctxt == NULL)
        return (NULL);
    return (FUNC1(ctxt, NULL, encoding, options, 0));
}