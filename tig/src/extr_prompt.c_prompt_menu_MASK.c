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
struct menu_item {scalar_t__ hotkey; scalar_t__ text; } ;
struct TYPE_2__ {scalar_t__* bytes; } ;
struct key {TYPE_1__ data; } ;
typedef  enum input_status { ____Placeholder_input_status } input_status ;

/* Variables and functions */
 scalar_t__ COLS ; 
 int INPUT_CANCEL ; 
 int INPUT_OK ; 
 int INPUT_STOP ; 
#define  KEY_DOWN 134 
#define  KEY_ENTER 133 
#define  KEY_ESC 132 
#define  KEY_LEFT 131 
#define  KEY_RETURN 130 
#define  KEY_RIGHT 129 
#define  KEY_UP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,struct key*) ; 
 char FUNC3 (struct key*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,scalar_t__,char const*) ; 

bool
FUNC7(const char *prompt, const struct menu_item *items, int *selected)
{
	enum input_status status = INPUT_OK;
	char buf[128];
	struct key key;
	int size = 0;

	while (items[size].text)
		size++;

	FUNC0(size > 0);

	FUNC1(1);
	while (status == INPUT_OK) {
		const struct menu_item *item = &items[*selected];
		const char hotkey[] = { ' ', '[', (char) item->hotkey, ']', 0 };
		int i;

		if (!FUNC5(buf, "(%d of %d)", *selected + 1, size))
			buf[0] = 0;

		FUNC6(buf, "%s %s%s", prompt, item->text,
			      item->hotkey ? hotkey : "");

		switch (FUNC2(COLS - 1, &key)) {
		case KEY_RETURN:
		case KEY_ENTER:
		case '\n':
			status = INPUT_STOP;
			break;

		case KEY_LEFT:
		case KEY_UP:
			*selected = *selected - 1;
			if (*selected < 0)
				*selected = size - 1;
			break;

		case KEY_RIGHT:
		case KEY_DOWN:
			*selected = (*selected + 1) % size;
			break;

		case KEY_ESC:
			status = INPUT_CANCEL;
			break;

		default:
			if (FUNC3(&key) == 'C') {
				status = INPUT_CANCEL;
				break;
			}

			for (i = 0; items[i].text; i++)
				if (items[i].hotkey == key.data.bytes[0]) {
					*selected = i;
					status = INPUT_STOP;
					break;
				}
		}
	}
	FUNC1(0);

	FUNC4();

	return status != INPUT_CANCEL;
}