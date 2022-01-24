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
 int /*<<< orphan*/  ANDROID_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(void *user, const char *message)
{
	FUNC2(stderr, "error: %s\n", message);
#ifdef USE_OUTPUT_DEBUG_STRING
	OutputDebugStringA("error: ");
	OutputDebugStringA(message);
	OutputDebugStringA("\n");
#endif
#ifdef USE_ANDROID_LOG
	__android_log_print(ANDROID_LOG_ERROR, "libmupdf", "%s", message);
#endif
}