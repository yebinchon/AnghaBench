#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sway_cursor {int /*<<< orphan*/  cursor; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {float width; float height; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_cursor*) ; 
 int /*<<< orphan*/ * expected_syntax ; 
 struct cmd_results* FUNC2 (struct sway_cursor*,char*,char*) ; 
 TYPE_1__* root ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 float FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,float,float) ; 

__attribute__((used)) static struct cmd_results *FUNC8(struct sway_cursor *cursor,
		int argc, char **argv) {
	if (FUNC3(argv[0], "move") == 0) {
		if (argc < 3) {
			return FUNC0(CMD_INVALID, expected_syntax);
		}
		int delta_x = FUNC5(argv[1], NULL, 10);
		int delta_y = FUNC5(argv[2], NULL, 10);
		FUNC6(cursor->cursor, NULL, delta_x, delta_y);
		FUNC1(cursor);
	} else if (FUNC3(argv[0], "set") == 0) {
		if (argc < 3) {
			return FUNC0(CMD_INVALID, expected_syntax);
		}
		// map absolute coords (0..1,0..1) to root container coords
		float x = FUNC4(argv[1], NULL) / root->width;
		float y = FUNC4(argv[2], NULL) / root->height;
		FUNC7(cursor->cursor, NULL, x, y);
		FUNC1(cursor);
	} else {
		if (argc < 2) {
			return FUNC0(CMD_INVALID, expected_syntax);
		}
		struct cmd_results *error = NULL;
		if ((error = FUNC2(cursor, argv[0], argv[1]))) {
			return error;
		}
	}

	return FUNC0(CMD_SUCCESS, NULL);
}