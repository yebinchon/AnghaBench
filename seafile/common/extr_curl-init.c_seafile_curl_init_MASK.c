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
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * curl_locks ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pthread_self ; 
 int /*<<< orphan*/  seafile_curl_locking_callback ; 

void FUNC5()
{
    int i;
    curl_locks = FUNC3 (sizeof(pthread_mutex_t) * FUNC0());
    for (i = 0; i < FUNC0(); ++i) {
        FUNC4 (&curl_locks[i], NULL);
    }

#ifndef WIN32
    /* On Windows it's better to use the default id_function.
     * As per http://linux.die.net/man/3/crypto_set_id_callback,
     * the default id_functioin uses system's default thread
     * identifying API.
     */
    FUNC1 (pthread_self);
#endif
    FUNC2 (seafile_curl_locking_callback);
}