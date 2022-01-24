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
typedef  char uint8_t ;
struct smartypants_data {int dummy; } ;
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*,char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 char FUNC3 (char const) ; 

__attribute__((used)) static size_t
FUNC4(struct buf *ob, struct smartypants_data *smrt, uint8_t previous_char, const uint8_t *text, size_t size)
{
	if (FUNC2(previous_char) && size >= 3) {
		if (text[0] == '1' && text[1] == '/' && text[2] == '2') {
			if (size == 3 || FUNC2(text[3])) {
				FUNC0(ob, "&frac12;");
				return 2;
			}
		}

		if (text[0] == '1' && text[1] == '/' && text[2] == '4') {
			if (size == 3 || FUNC2(text[3]) ||
				(size >= 5 && FUNC3(text[3]) == 't' && FUNC3(text[4]) == 'h')) {
				FUNC0(ob, "&frac14;");
				return 2;
			}
		}

		if (text[0] == '3' && text[1] == '/' && text[2] == '4') {
			if (size == 3 || FUNC2(text[3]) ||
				(size >= 6 && FUNC3(text[3]) == 't' && FUNC3(text[4]) == 'h' && FUNC3(text[5]) == 's')) {
				FUNC0(ob, "&frac34;");
				return 2;
			}
		}
	}

	FUNC1(ob, text[0]);
	return 0;
}