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
typedef  int /*<<< orphan*/  emitter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  emitter_type_bool ; 
 int /*<<< orphan*/  emitter_type_int ; 
 int /*<<< orphan*/  emitter_type_string ; 

__attribute__((used)) static void
FUNC6(emitter_t *emitter) {
	bool b_false = false;
	bool b_true = true;
	int i_123 = 123;
	const char *str = "a string";

	FUNC0(emitter);
	FUNC1(emitter, "foo", "This is the foo table:");
	FUNC4(emitter, "abc", "ABC", emitter_type_bool, &b_false);
	FUNC4(emitter, "def", "DEF", emitter_type_bool, &b_true);
	FUNC5(emitter, "ghi", "GHI", emitter_type_int, &i_123,
	    "note_key1", emitter_type_string, &str);
	FUNC5(emitter, "jkl", "JKL", emitter_type_string, &str,
	    "note_key2", emitter_type_bool, &b_false);
	FUNC2(emitter);
	FUNC3(emitter);
}