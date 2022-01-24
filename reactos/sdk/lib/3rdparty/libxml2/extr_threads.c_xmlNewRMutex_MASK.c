#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlRMutexPtr ;
typedef  int /*<<< orphan*/  xmlRMutex ;
struct TYPE_5__ {scalar_t__ count; int /*<<< orphan*/ * lock; int /*<<< orphan*/  cs; int /*<<< orphan*/  cv; scalar_t__ waiters; scalar_t__ held; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ libxml_is_threaded ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

xmlRMutexPtr
FUNC6(void)
{
    xmlRMutexPtr tok;

    if ((tok = FUNC2(sizeof(xmlRMutex))) == NULL)
        return (NULL);
#ifdef HAVE_PTHREAD_H
    if (libxml_is_threaded != 0) {
        pthread_mutex_init(&tok->lock, NULL);
        tok->held = 0;
        tok->waiters = 0;
        pthread_cond_init(&tok->cv, NULL);
    }
#elif defined HAVE_WIN32_THREADS
    InitializeCriticalSection(&tok->cs);
    tok->count = 0;
#elif defined HAVE_BEOS_THREADS
    if ((tok->lock = xmlNewMutex()) == NULL) {
        free(tok);
        return NULL;
    }
    tok->count = 0;
#endif
    return (tok);
}