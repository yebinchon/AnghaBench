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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ xmlParserInitialized ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(void) {
    if (!xmlParserInitialized)
	return;

    FUNC1();
#ifdef LIBXML_CATALOG_ENABLED
    xmlCatalogCleanup();
#endif
    FUNC7();
    FUNC3();
#ifdef LIBXML_OUTPUT_ENABLED
    xmlCleanupOutputCallbacks();
#endif
#ifdef LIBXML_SCHEMAS_ENABLED
    xmlSchemaCleanupTypes();
    xmlRelaxNGCleanupTypes();
#endif
    FUNC9();
    FUNC2();
    FUNC6(); /* must be last if called not from the main thread */
    FUNC4();
    xmlParserInitialized = 0;
}