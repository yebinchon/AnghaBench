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
struct command_policy {scalar_t__ context; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct command_policy*) ; 
 struct command_policy* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

struct command_policy *FUNC3(const char *command) {
	struct command_policy *policy = FUNC1(sizeof(struct command_policy));
	if (!policy) {
		return NULL;
	}
	policy->command = FUNC2(command);
	if (!policy->command) {
		FUNC0(policy);
		return NULL;
	}
	policy->context = 0;
	return policy;
}