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
struct TYPE_2__ {int /*<<< orphan*/  bytes; } ;
struct key {TYPE_1__ data; } ;
struct input {struct file_finder* data; } ;
struct file_finder {size_t searchlen; int /*<<< orphan*/ ** search; int /*<<< orphan*/  keymap; } ;
typedef  enum input_status { ____Placeholder_input_status } input_status ;

/* Variables and functions */
 int INPUT_CANCEL ; 
 int INPUT_DELETE ; 
 int INPUT_OK ; 
 int INPUT_SKIP ; 
#define  REQ_BACK 133 
#define  REQ_FIND_NEXT 132 
#define  REQ_FIND_PREV 131 
#define  REQ_PARENT 130 
#define  REQ_VIEW_CLOSE 129 
#define  REQ_VIEW_CLOSE_NO_QUIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ***,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file_finder*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_finder*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file_finder*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct key*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int FUNC7 (struct input*,struct key*) ; 

__attribute__((used)) static enum input_status
FUNC8(struct input *input, struct key *key)
{
	struct file_finder *finder = input->data;
	enum input_status status;

	status = FUNC7(input, key);
	if (status == INPUT_DELETE) {
		if (finder->searchlen > 0) {
			finder->searchlen--;
			FUNC4((void *) finder->search[finder->searchlen]);
			finder->search[finder->searchlen] = NULL;
		}
		FUNC3(finder);
		FUNC2(finder, 0);
		FUNC1(finder);
		return status;
	}

	if (status != INPUT_SKIP)
		return status;

	switch (FUNC5(finder->keymap, key, 1, NULL)) {
	case REQ_FIND_PREV:
		FUNC2(finder, -1);
		FUNC1(finder);
		return INPUT_SKIP;

	case REQ_FIND_NEXT:
		FUNC2(finder, +1);
		FUNC1(finder);
		return INPUT_SKIP;

	case REQ_BACK:
	case REQ_PARENT:
	case REQ_VIEW_CLOSE:
	case REQ_VIEW_CLOSE_NO_QUIT:
		return INPUT_CANCEL;

	default:
		if (FUNC6(key) == 0) {
			FUNC0(&finder->search, key->data.bytes);
			finder->searchlen++;
			FUNC3(finder);
			FUNC2(finder, 0);
			FUNC1(finder);
			return INPUT_OK;
		}

		/* Catch all non-multibyte keys. */
		return INPUT_SKIP;
	}
}