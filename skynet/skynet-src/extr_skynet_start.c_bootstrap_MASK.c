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
struct skynet_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context*) ; 
 struct skynet_context* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,char*,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(struct skynet_context * logger, const char * cmdline) {
	int sz = FUNC5(cmdline);
	char name[sz+1];
	char args[sz+1];
	FUNC4(cmdline, "%s %s", name, args);
	struct skynet_context *ctx = FUNC2(name, args);
	if (ctx == NULL) {
		FUNC3(NULL, "Bootstrap error : %s\n", cmdline);
		FUNC1(logger);
		FUNC0(1);
	}
}