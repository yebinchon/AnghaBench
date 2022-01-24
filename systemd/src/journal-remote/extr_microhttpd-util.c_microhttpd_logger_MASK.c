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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE_WARNING_FORMAT_NONLITERAL ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  REENABLE_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char const*) ; 

void FUNC2(void *arg, const char *fmt, va_list ap) {
        char *f;

        f = FUNC1("microhttpd: ", fmt);

        DISABLE_WARNING_FORMAT_NONLITERAL;
        FUNC0(LOG_INFO, 0, NULL, 0, NULL, f, ap);
        REENABLE_WARNING;
}