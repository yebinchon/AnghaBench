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
struct pattern {int /*<<< orphan*/  regex; int /*<<< orphan*/  match_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATTERN_FOCUSED ; 
 int /*<<< orphan*/  PATTERN_PCRE ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct pattern* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC4(struct pattern **pattern, char *value) {
	*pattern = FUNC0(1, sizeof(struct pattern));
	if (!*pattern) {
		FUNC3(SWAY_ERROR, "Failed to allocate pattern");
	}

	if (FUNC2(value, "__focused__") == 0) {
		(*pattern)->match_type = PATTERN_FOCUSED;
	} else {
		(*pattern)->match_type = PATTERN_PCRE;
		if (!FUNC1(&(*pattern)->regex, value)) {
			return false;
		};
	}
	return true;
}