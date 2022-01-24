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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * xmlGenericError ; 
 int /*<<< orphan*/ * xmlGenericErrorDefaultFunc ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int xmlParserInitialized ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

void
FUNC14(void) {
    if (xmlParserInitialized != 0)
	return;

#ifdef LIBXML_THREAD_ENABLED
    __xmlGlobalInitMutexLock();
    if (xmlParserInitialized == 0) {
#endif
	FUNC9();
	FUNC7();
	if ((xmlGenericError == xmlGenericErrorDefaultFunc) ||
	    (xmlGenericError == NULL))
	    FUNC4(NULL);
	FUNC8();
        FUNC10();
	FUNC6();
	FUNC5();
	FUNC11();
#ifdef LIBXML_OUTPUT_ENABLED
	xmlRegisterDefaultOutputCallbacks();
#endif /* LIBXML_OUTPUT_ENABLED */
#ifdef LIBXML_HTML_ENABLED
	htmlInitAutoClose();
	htmlDefaultSAXHandlerInit();
#endif
#ifdef LIBXML_XPATH_ENABLED
	xmlXPathInit();
#endif
	xmlParserInitialized = 1;
#ifdef LIBXML_THREAD_ENABLED
    }
    __xmlGlobalInitMutexUnlock();
#endif
}