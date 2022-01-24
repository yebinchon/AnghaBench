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
typedef  int /*<<< orphan*/  LogRealm ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTECT_ERRNO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*,int,char const*,char*) ; 

void FUNC2(
                LogRealm realm,
                const char *text,
                const char *file,
                int line,
                const char *func) {
        PROTECT_ERRNO;
        FUNC1(FUNC0(realm, LOG_DEBUG), text, file, line, func,
                   "Assertion '%s' failed at %s:%u, function %s(). Ignoring.");
}