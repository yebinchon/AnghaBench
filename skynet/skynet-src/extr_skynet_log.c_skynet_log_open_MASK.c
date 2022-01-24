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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int time_t ;
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct skynet_context*,char*,char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*,int) ; 
 size_t FUNC9 (char const*) ; 

FILE * 
FUNC10(struct skynet_context * ctx, uint32_t handle) {
	const char * logpath = FUNC5("logpath");
	if (logpath == NULL)
		return NULL;
	size_t sz = FUNC9(logpath);
	char tmp[sz + 16];
	FUNC8(tmp, "%s/%08x.log", logpath, handle);
	FILE *f = FUNC2(tmp, "ab");
	if (f) {
		uint32_t starttime = FUNC7();
		uint64_t currenttime = FUNC6();
		time_t ti = starttime + currenttime/100;
		FUNC4(ctx, "Open log file %s", tmp);
		FUNC3(f, "open time: %u %s", (uint32_t)currenttime, FUNC0(&ti));
		FUNC1(f);
	} else {
		FUNC4(ctx, "Open log file %s fail", tmp);
	}
	return f;
}