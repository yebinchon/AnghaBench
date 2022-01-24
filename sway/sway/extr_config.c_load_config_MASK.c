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
struct swaynag_instance {int dummy; } ;
struct sway_config {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sway_config*,struct swaynag_instance*) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool FUNC6(const char *path, struct sway_config *config,
		struct swaynag_instance *swaynag) {
	if (path == NULL) {
		FUNC5(SWAY_ERROR, "Unable to find a config file!");
		return false;
	}

	FUNC5(SWAY_INFO, "Loading config from %s", path);

	struct stat sb;
	if (FUNC4(path, &sb) == 0 && FUNC0(sb.st_mode)) {
		FUNC5(SWAY_ERROR, "%s is a directory not a config file", path);
		return false;
	}

	FILE *f = FUNC2(path, "r");
	if (!f) {
		FUNC5(SWAY_ERROR, "Unable to open %s for reading", path);
		return false;
	}

	bool config_load_success = FUNC3(f, config, swaynag);
	FUNC1(f);

	if (!config_load_success) {
		FUNC5(SWAY_ERROR, "Error(s) loading config!");
	}

	return true;
}