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
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  json_type_array ; 
 int /*<<< orphan*/  json_type_object ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(json_object *r, bool fallback) {
	if (!FUNC2(r, json_type_array)) {
		if (FUNC2(r, json_type_object)) {
			return FUNC3(r);
		}
		return fallback;
	}

	size_t results_len = FUNC1(r);
	if (!results_len) {
		return fallback;
	}

	for (size_t i = 0; i < results_len; ++i) {
		json_object *result = FUNC0(r, i);

		if (!FUNC3(result)) {
			return false;
		}
	}

	return true;
}