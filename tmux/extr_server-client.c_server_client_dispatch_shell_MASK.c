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
struct client {int /*<<< orphan*/  peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_SHELL ; 
 char* _PATH_BSHELL ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  global_s_options ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(struct client *c)
{
	const char	*shell;

	shell = FUNC1(global_s_options, "default-shell");
	if (*shell == '\0' || FUNC0(shell))
		shell = _PATH_BSHELL;
	FUNC3(c->peer, MSG_SHELL, -1, shell, FUNC4(shell) + 1);

	FUNC2(c->peer);
}