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
struct TYPE_3__ {int category; } ;
typedef  TYPE_1__ utf8proc_property_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(const char *text, int category)
{
	ssize_t textlen = FUNC0(text);

	while (textlen > 0) {
		int32_t unicode;
		ssize_t slen = FUNC2((uint8_t *) text, textlen, &unicode);
		const utf8proc_property_t *property;

		if (slen <= 0)
			break;

		property = FUNC1(unicode);
		if (property->category & category)
			return true;

		text += slen;
		textlen -= slen;
	}

	return false;
}