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
struct key_combo {scalar_t__ request; scalar_t__ keys; struct key* key; int /*<<< orphan*/  keymap; scalar_t__ bufpos; } ;
struct key {int dummy; } ;
struct input {int /*<<< orphan*/  buf; struct key_combo* data; } ;
typedef  enum input_status { ____Placeholder_input_status } input_status ;

/* Variables and functions */
 int INPUT_CANCEL ; 
 int INPUT_OK ; 
 int INPUT_STOP ; 
 scalar_t__ KEY_ESC ; 
 scalar_t__ KEY_MOUSE ; 
 scalar_t__ REQ_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct key*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct key*,scalar_t__,int*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum input_status
FUNC5(struct input *input, struct key *key)
{
	struct key_combo *combo = input->data;
	int matches = 0;

#ifdef NCURSES_MOUSE_VERSION
	if (key_to_value(key) == KEY_MOUSE) {
		combo->request = handle_mouse_event();
		return INPUT_STOP;
	}
#endif

	if (combo->keys && FUNC3(key) == KEY_ESC)
		return INPUT_CANCEL;

	FUNC4(input->buf, &combo->bufpos, "%s%s",
			   combo->bufpos ? " " : "Keys: ", FUNC0(key, 1, false));
	combo->key[combo->keys++] = *key;
	combo->request = FUNC1(combo->keymap, combo->key, combo->keys, &matches);

	if (combo->request == REQ_UNKNOWN)
		return matches > 0 ? INPUT_OK : INPUT_STOP;
	return INPUT_STOP;
}