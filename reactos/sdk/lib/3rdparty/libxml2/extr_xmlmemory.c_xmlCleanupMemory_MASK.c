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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 scalar_t__ xmlMemInitialized ; 
 int /*<<< orphan*/ * xmlMemMutex ; 

void
FUNC2(void) {
#ifdef DEBUG_MEMORY
     xmlGenericError(xmlGenericErrorContext,
	     "xmlCleanupMemory()\n");
#endif
    if (xmlMemInitialized == 0)
        return;

    FUNC0(xmlMemMutex);
    xmlMemMutex = NULL;
    xmlMemInitialized = 0;
#ifdef DEBUG_MEMORY
     xmlGenericError(xmlGenericErrorContext,
	     "xmlCleanupMemory() Ok\n");
#endif
}