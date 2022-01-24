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
struct skynet_config {char* logservice; scalar_t__ daemon; int /*<<< orphan*/  thread; int /*<<< orphan*/  bootstrap; int /*<<< orphan*/  logger; int /*<<< orphan*/  profile; int /*<<< orphan*/  module_path; int /*<<< orphan*/  harbor; } ;
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/ * sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  handle_hup ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct skynet_context*) ; 
 struct skynet_context* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void 
FUNC20(struct skynet_config * config) {
	// register SIGHUP for log file reopen
	struct sigaction sa;
	sa.sa_handler = &handle_hup;
	sa.sa_flags = SA_RESTART;
	FUNC6(&sa.sa_mask);
	FUNC5(SIGHUP, &sa, NULL);

	if (config->daemon) {
		if (FUNC2(config->daemon)) {
			FUNC3(1);
		}
	}
	FUNC12(config->harbor);
	FUNC9(config->harbor);
	FUNC14();
	FUNC13(config->module_path);
	FUNC18();
	FUNC17();
	FUNC15(config->profile);

	struct skynet_context *ctx = FUNC8(config->logservice, config->logger);
	if (ctx == NULL) {
		FUNC4(stderr, "Can't launch %s service\n", config->logservice);
		FUNC3(1);
	}

	FUNC10(FUNC7(ctx), "logger");

	FUNC0(ctx, config->bootstrap);

	FUNC19(config->thread);

	// harbor_exit may call socket send, so it should exit before socket_free
	FUNC11();
	FUNC16();
	if (config->daemon) {
		FUNC1(config->daemon);
	}
}