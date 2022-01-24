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
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int FUNC0 (char const**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_repo_config_option ; 

enum status_code
FUNC1(void)
{
	const char *config_list_argv[] = { "git", "config", "--list", NULL };

	return FUNC0(config_list_argv, "=", read_repo_config_option, NULL);
}