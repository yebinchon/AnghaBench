#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* bytes; int value; } ;
struct TYPE_4__ {int /*<<< orphan*/  multibytes; } ;
struct key {TYPE_2__ data; TYPE_1__ modifiers; } ;
struct TYPE_6__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_3__ opt_tty ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 
 int FUNC4 (int*) ; 

int
FUNC5(void)
{
	if (FUNC2()) {
		static struct key key;
		static int bytes_pos;

		if (!key.modifiers.multibytes || bytes_pos >= FUNC4(key.data.bytes)) {
			if (!FUNC3(&key))
				return 0;
			bytes_pos = 0;
		}

		if (!key.modifiers.multibytes) {
			if (key.data.value < 128)
				return key.data.value;
			FUNC0("Only ASCII control characters can be used in prompts: %d", key.data.value);
		}

		return key.data.bytes[bytes_pos++];
	}

	return FUNC1(opt_tty.file);
}