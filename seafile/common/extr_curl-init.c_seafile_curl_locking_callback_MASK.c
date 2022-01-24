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
 int CRYPTO_LOCK ; 
 int /*<<< orphan*/ * curl_locks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(int mode, int n, const char* file, int line)
{
    if (mode & CRYPTO_LOCK) {
        FUNC0 (&curl_locks[n]);
    } else {
        FUNC1 (&curl_locks[n]);
    }
}