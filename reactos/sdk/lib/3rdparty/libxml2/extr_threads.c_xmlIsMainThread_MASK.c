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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int libxml_is_threaded ; 
 scalar_t__ mainthread ; 
 int /*<<< orphan*/  once_control ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(void)
{
#ifdef HAVE_PTHREAD_H
    if (libxml_is_threaded == -1)
        xmlInitThreads();
    if (libxml_is_threaded == 0)
        return (1);
    pthread_once(&once_control, xmlOnceInit);
#elif defined HAVE_WIN32_THREADS
    xmlOnceInit();
#elif defined HAVE_BEOS_THREADS
    xmlOnceInit();
#endif

#ifdef DEBUG_THREADS
    xmlGenericError(xmlGenericErrorContext, "xmlIsMainThread()\n");
#endif
#ifdef HAVE_PTHREAD_H
    return (pthread_equal(mainthread,pthread_self()));
#elif defined HAVE_WIN32_THREADS
    return (mainthread == GetCurrentThreadId());
#elif defined HAVE_BEOS_THREADS
    return (mainthread == find_thread(NULL));
#else
    return (1);
#endif
}