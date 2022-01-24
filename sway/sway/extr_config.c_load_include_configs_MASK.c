#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** we_wordv; size_t we_wordc; } ;
typedef  TYPE_1__ wordexp_t ;
struct swaynag_instance {int dummy; } ;
struct sway_config {int /*<<< orphan*/  current_config_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,struct sway_config*,struct swaynag_instance*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(const char *path, struct sway_config *config,
		struct swaynag_instance *swaynag) {
	char *wd = FUNC3(NULL, 0);
	char *parent_path = FUNC5(config->current_config_path);
	const char *parent_dir = FUNC1(parent_path);

	if (FUNC0(parent_dir) < 0) {
		FUNC6(SWAY_ERROR, "failed to change working directory");
		goto cleanup;
	}

	wordexp_t p;
	if (FUNC7(path, &p, 0) == 0) {
		char **w = p.we_wordv;
		size_t i;
		for (i = 0; i < p.we_wordc; ++i) {
			FUNC4(w[i], parent_dir, config, swaynag);
		}
		FUNC8(&p);
	}

	// Attempt to restore working directory before returning.
	if (FUNC0(wd) < 0) {
		FUNC6(SWAY_ERROR, "failed to change working directory");
	}
cleanup:
	FUNC2(parent_path);
	FUNC2(wd);
}