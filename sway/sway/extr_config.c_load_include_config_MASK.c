#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct swaynag_instance {int dummy; } ;
struct sway_config {char* current_config_path; TYPE_1__* config_chain; } ;
struct TYPE_3__ {int length; char** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sway_config*,struct swaynag_instance*) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool FUNC11(const char *path, const char *parent_dir,
		struct sway_config *config, struct swaynag_instance *swaynag) {
	// save parent config
	const char *parent_config = config->current_config_path;

	char *full_path;
	int len = FUNC9(path);
	if (len >= 1 && path[0] != '/') {
		len = len + FUNC9(parent_dir) + 2;
		full_path = FUNC4(len * sizeof(char));
		if (!full_path) {
			FUNC10(SWAY_ERROR,
				"Unable to allocate full path to included config");
			return false;
		}
		FUNC6(full_path, len, "%s/%s", parent_dir, path);
	} else {
		full_path = FUNC8(path);
	}

	char *real_path = FUNC5(full_path, NULL);
	FUNC0(full_path);

	if (real_path == NULL) {
		FUNC10(SWAY_DEBUG, "%s not found.", path);
		return false;
	}

	// check if config has already been included
	int j;
	for (j = 0; j < config->config_chain->length; ++j) {
		char *old_path = config->config_chain->items[j];
		if (FUNC7(real_path, old_path) == 0) {
			FUNC10(SWAY_DEBUG,
				"%s already included once, won't be included again.",
				real_path);
			FUNC0(real_path);
			return false;
		}
	}

	config->current_config_path = real_path;
	FUNC1(config->config_chain, real_path);
	int index = config->config_chain->length - 1;

	if (!FUNC3(real_path, config, swaynag)) {
		FUNC0(real_path);
		config->current_config_path = parent_config;
		FUNC2(config->config_chain, index);
		return false;
	}

	// restore current_config_path
	config->current_config_path = parent_config;
	return true;
}